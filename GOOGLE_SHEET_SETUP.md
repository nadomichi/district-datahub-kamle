# Google Sheet Template Setup Guide

**For Admin Use Only**

---

## Step 1: Create Google Sheet

### Instructions:
1. Go to [Google Sheets](https://sheets.google.com)
2. Click **"+ New"** → **"Blank spreadsheet"**
3. Name it: **"Kamle District - Government Forms"**
4. Keep it in your Google Drive

---

## Step 2: Create Column Headers

### Add these columns to Row 1:

| Column A | Column B | Column C | Column D | Column E | Column F |
|----------|----------|----------|----------|----------|----------|
| Form Name | Category | Description | Download Link | Status | Last Updated |

**Copy-paste this exact header row:**
```
Form Name	Category	Description	Download Link	Status	Last Updated
```

---

## Step 3: Add Form Data

### Example data to add (starting from Row 2):

```
Birth Certificate Application | Vital Records | Apply for birth certificate | https://drive.google.com/file/d/... | Active | 2026-08-12
Death Certificate Form | Vital Records | Apply for death certificate | https://drive.google.com/file/d/... | Active | 2026-08-12
Residential Certificate | Residential | Residential proof application | https://drive.google.com/file/d/... | Active | 2026-08-10
School Leaving Certificate | Educational | SLC application form | https://drive.google.com/file/d/... | Active | 2026-07-15
Trade License Application | Business | Register business/trade | https://drive.google.com/file/d/... | Coming Soon | 2026-08-12
```

---

## Column Descriptions

### **Column A: Form Name** (Required)
- **What:** Name of the government form
- **Example:** "Birth Certificate Application"
- **Max Length:** 50 characters

### **Column B: Category** (Required)
- **What:** Category/classification of the form
- **Use these standard categories:**
  - `Vital Records`
  - `Residential`
  - `Educational`
  - `Business`
  - `Agriculture`
  - `Health`
  - `Other`
- **Note:** Exact spelling matters! (for grouping in portal)

### **Column C: Description** (Required)
- **What:** Brief description of what the form is for
- **Example:** "Apply for your birth certificate with proof of identification"
- **Max Length:** 150 characters
- **Tip:** Make it user-friendly and clear

### **Column D: Download Link** (Required)
- **What:** Direct link to the PDF file in Google Drive
- **Format:** Must be a shareable Google Drive link
- **How to get link:**
  1. Upload PDF to Google Drive
  2. Right-click → Share
  3. Change to "Viewer" (anyone with link)
  4. Copy the link
  5. Paste in this column

### **Column E: Status** (Optional)
- **What:** Current status of the form
- **Options:**
  - `Active` (available for download)
  - `Coming Soon` (will be available)
  - `Updated` (recently updated)
- **Default:** Active
- **Note:** Shows as badge in portal

### **Column F: Last Updated** (Optional)
- **What:** When was this form last updated
- **Format:** YYYY-MM-DD (e.g., 2026-08-12)
- **Tip:** Helps users know form is current

---

## Step 4: Format Your Google Sheet

### Make it look professional:

1. **Freeze Header Row:**
   - Select Row 1
   - View → Freeze → 1 row

2. **Auto-resize Columns:**
   - Select all columns
   - Double-click column border to auto-fit

3. **Format Header Row:**
   - Select Row 1
   - Make Bold (Ctrl+B)
   - Add background color (light gray)

4. **Add Data Validation (Optional):**
   - Select Column B (Category)
   - Data → Data validation
   - Add list: Vital Records, Residential, Educational, Business, Agriculture, Health, Other
   - This prevents spelling mistakes

---

## Step 5: Publish Sheet as CSV

### This makes it readable by the HTML portal:

1. In Google Sheets, go to **File → Share**
2. Set sharing to **"Anyone with the link"** → **Viewer**
3. Go to **File → Publish to the web**
4. Click **"Publish"** (defaults to CSV are good)
5. Copy the published URL - you'll need it

**The URL should look like:**
```
https://docs.google.com/spreadsheets/d/YOUR_SHEET_ID/export?format=csv&gid=0
```

---

## Step 6: Connect HTML Portal to Google Sheet

### Update the HTML file:

1. Open the HTML file in a text editor
2. Find this line (around line 162):
   ```javascript
   const SHEET_ID = 'YOUR_GOOGLE_SHEET_ID_HERE';
   ```

3. Replace `YOUR_GOOGLE_SHEET_ID_HERE` with your actual Sheet ID

**How to find your Sheet ID:**
- Look at your Google Sheet URL:
  ```
  https://docs.google.com/spreadsheets/d/1A2B3C4D5E6F7G8H9/edit
                                         ↑ This is your Sheet ID
  ```

4. Save the HTML file

---

## Step 7: Test the Portal

1. Open the updated HTML file in a browser
2. You should see all your forms displayed
3. Click download buttons to test links
4. Try the search function

**If nothing appears:**
- Check that Sheet is published as CSV
- Verify Sheet ID is correct in HTML
- Check that form links are valid
- Ensure CSV has proper headers

---

## Admin Workflow (Going Forward)

### To add a new form:

1. **Get the PDF:**
   - Upload to Google Drive
   - Get shareable link (View-only access)

2. **Add to Google Sheet:**
   - New row in Sheet
   - Fill in: Name, Category, Description, Link, Status, Date

3. **Publish/Update:**
   - Sheet auto-publishes changes
   - Portal refreshes automatically (within minutes)
   - Users see new form instantly ✨

### That's it! No coding, no re-publishing HTML needed.

---

## Tips for Success

### ✅ **DO:**
- Keep form names short and clear
- Use standard categories for grouping
- Write descriptions for users
- Update "Last Updated" date regularly
- Test links before publishing
- Keep PDFs organized in Drive

### ❌ **DON'T:**
- Leave empty cells (fill with "N/A" if needed)
- Misspell category names
- Use very long descriptions
- Share sensitive/draft forms
- Delete old forms (mark as "Archived")
- Paste raw URLs (use shareable links)

---

## Example Complete Sheet

```
Form Name | Category | Description | Download Link | Status | Last Updated
Birth Certificate Application | Vital Records | Apply for birth certificate | https://drive.google.com/file/d/1XYZ/view | Active | 2026-08-12
Death Certificate Form | Vital Records | Apply for death certificate | https://drive.google.com/file/d/2ABC/view | Active | 2026-08-12
Residential Certificate | Residential | Proof of residence | https://drive.google.com/file/d/3DEF/view | Active | 2026-08-10
School Leaving Certificate | Educational | SLC from school | https://drive.google.com/file/d/4GHI/view | Active | 2026-07-15
Trade License | Business | Register business | https://drive.google.com/file/d/5JKL/view | Coming Soon | 2026-08-12
```

---

## Troubleshooting

### **Problem:** Portal shows empty
- ✓ Verify Sheet is published as CSV
- ✓ Check Sheet ID is correct
- ✓ Ensure headers match exactly

### **Problem:** Forms appear but links don't work
- ✓ Test links directly in Drive
- ✓ Make sure links are "Viewer" access
- ✓ Re-copy shareable links

### **Problem:** New forms don't appear
- ✓ Wait 5-10 minutes for cache refresh
- ✓ Hard-refresh browser (Ctrl+Shift+R)
- ✓ Check Sheet is published

### **Problem:** Search not working
- ✓ Form names/categories must match exactly
- ✓ Check spelling in Sheet
- ✓ Try searching by category

---

## Security Notes

✅ **Sheet is read-only for public** (Published as CSV, view-only)  
✅ **Only you can edit** (Sharing set to "Anyone with link" but CSV is read-only)  
✅ **Download links are secure** (Google Drive handles access)  
✅ **No admin panel exposed** (Sheet is never shown to public)

---

## Quick Checklist

- [ ] Created new Google Sheet
- [ ] Added headers (Form Name, Category, etc.)
- [ ] Added at least 5 sample forms
- [ ] Published Sheet as CSV
- [ ] Updated HTML file with Sheet ID
- [ ] Tested HTML portal in browser
- [ ] Tested download links
- [ ] Verified search works
- [ ] Shared HTML link (not Sheet link) with users

---

**Ready to use! Just add forms to the Sheet, and portal updates automatically.** ✨
