param(
    [int]$Port = 8000
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "📁 Serving files from: $ScriptDir" -ForegroundColor Cyan
Write-Host "🚀 Starting server on http://localhost:$Port" -ForegroundColor Green
Write-Host "🔗 Open: http://localhost:$Port/forms_portal.html" -ForegroundColor Yellow
Write-Host "❌ Press Ctrl+C to stop" -ForegroundColor Red
Write-Host ""

$http = [System.Net.HttpListener]::new()
$http.Prefixes.Add("http://localhost:$Port/")
$http.Start()

while ($http.IsListening) {
    $context = $http.GetContext()
    $request = $context.Request
    $response = $context.Response

    $path = $request.Url.LocalPath
    if ($path -eq '/') { $path = '/forms_portal.html' }

    $filePath = Join-Path $ScriptDir ($path -replace '^/', '')

    try {
        if (Test-Path $filePath -PathType Leaf) {
            $content = [System.IO.File]::ReadAllBytes($filePath)
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()

            $mimeTypes = @{
                '.html' = 'text/html'
                '.css'  = 'text/css'
                '.js'   = 'application/javascript'
                '.json' = 'application/json'
                '.csv'  = 'text/csv'
            }

            $response.ContentType = $mimeTypes[$ext] -or 'application/octet-stream'
            $response.ContentLength64 = $content.Length
            $response.StatusCode = 200
            $response.OutputStream.Write($content, 0, $content.Length)

            Write-Host "✅ 200 - $path" -ForegroundColor Green
        }
        else {
            $response.StatusCode = 404
            $notFound = [System.Text.Encoding]::UTF8.GetBytes("404 - Not Found: $path")
            $response.OutputStream.Write($notFound, 0, $notFound.Length)
            Write-Host "❌ 404 - $path" -ForegroundColor Red
        }
    }
    catch {
        $response.StatusCode = 500
        Write-Host "⚠️ Error: $($_.Exception.Message)" -ForegroundColor Yellow
    }
    finally {
        $response.OutputStream.Close()
    }
}
