export default async function handler(req, res) {
  // Enable CORS
  res.setHeader('Access-Control-Allow-Credentials', 'true');
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET,OPTIONS,PATCH,DELETE,POST,PUT');
  res.setHeader('Access-Control-Allow-Headers', 'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version');

  if (req.method === 'OPTIONS') {
    res.status(200).end();
    return;
  }

  try {
    const SHEET_ID = '1oR8fSNik_d0EdRhUyRbDnvDgaueE0_LMloTUWsOGVq0';
    const SHEET_GID = '1199234875';

    // Google Sheets CSV export URL
    const csvUrl = `https://docs.google.com/spreadsheets/d/${SHEET_ID}/export?format=csv&gid=${SHEET_GID}`;

    console.log(`Fetching from Google Sheets: ${csvUrl}`);

    // Fetch CSV data
    const response = await fetch(csvUrl, {
      method: 'GET',
      headers: {
        'Accept': 'text/csv',
      },
      timeout: 10000
    });

    if (!response.ok) {
      throw new Error(`Google Sheets returned ${response.status}`);
    }

    const csvData = await response.text();

    // Return CSV data with caching headers
    res.setHeader('Content-Type', 'text/csv');
    res.setHeader('Cache-Control', 'public, max-age=3600'); // Cache for 1 hour
    res.status(200).send(csvData);

  } catch (error) {
    console.error('Error fetching from Google Sheets:', error);
    res.status(500).json({
      error: 'Failed to fetch forms data',
      message: error.message
    });
  }
}
