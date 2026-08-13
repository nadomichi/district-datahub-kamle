# How to Use the Excel Template - Simple Guide

**For people who want to use Excel instead of Google Sheets**

---

## 📦 What You Got

A template file with example forms already filled in:
- `Kamle_District_Forms_Template.csv`

This is a **CSV file** (can be opened in Excel).

---

## 🔄 STEP 1: Convert CSV to Excel

### **Option A: Using Excel (Easiest)**

```
1. Download: Kamle_District_Forms_Template.csv
2. Right-click on the file
3. Click "Open with" → "Microsoft Excel"
4. Excel opens with your data
5. You'll see all forms in nice columns
6. Click File → Save As
7. Change format to "Excel Workbook (.xlsx)"
8. Click Save
```

**That's it! Now you have an Excel file (.xlsx)**

### **Option B: Using Google Sheets**

```
1. Go to: https://sheets.google.com
2. Click "+ New" → "File upload"
3. Select: Kamle_District_Forms_Template.csv
4. Google Sheets converts it automatically
5. Your data appears in Google Sheets
6. You can edit it directly here
```

---

## 📋 What's in the Template?

### **13 Example Forms Already Filled In**

The template includes examples in these categories:

#### **Vital Records** (3 forms)
- Birth Certificate Application
- Death Certificate Application
- Marriage Certificate

#### **Residential** (2 forms)
- Residential Certificate
- Identity Proof Form

#### **Educational** (2 forms)
- School Leaving Certificate
- Caste Certificate

#### **Business** (2 forms)
- Trade License Application
- Business Registration Form

#### **Agriculture** (2 forms)
- Farmer Registration
- Agricultural Loan Application

#### **Health** (2 forms)
- Health Certificate
- Vaccination Certificate Request

---

## ✏️ STEP 2: Edit the Template

### **Replace Example Data With Your Forms**

For each row:

| Column | What to Change | Example |
|--------|-------------|---------|
| **Form Name** | Replace with your actual form name | "Birth Certificate Application" |
| **Category** | Keep from list (Vital Records, Business, etc.) | "Vital Records" |
| **Description** | Replace with what form is for | "Apply for birth certificate with proof of identification" |
| **Download Link** | Replace with your PDF's Google Drive link | "https://drive.google.com/file/d/YOUR_ID/view" |
| **Status** | Keep as "Active" or "Coming Soon" | "Active" |
| **Last Updated** | Change to today's date | "2026-08-13" |

### **Before:**
```
Birth Certificate Application,Vital Records,Apply for birth certificate...,https://drive.google.com/file/d/YOUR_FILE_ID/view...,Active,2026-08-13
```

### **After (Your Data):**
```
Birth Certificate Application,Vital Records,Apply for your birth certificate...,https://drive.google.com/file/d/1A2B3C4D5E6F/view,Active,2026-08-13
```

---

## 📱 STEP 3: Upload to Google Drive

### **If Using Excel File (.xlsx)**

```
1. Open Google Drive: https://drive.google.com
2. Click "+ New" → "File upload"
3. Select your Excel file (.xlsx)
4. Wait for upload to complete
5. Right-click the file → "Open with" → "Google Sheets"
6. Google Sheets converts it
7. Now you can edit it online
```

### **If Using Google Sheets**

```
1. You're already in Google Sheets
2. Just keep editing your forms
3. Changes save automatically
```

---

## 🔗 STEP 4: Get Links for Your PDFs

For **each form**, you need a Google Drive link:

```
1. Upload your PDF to Google Drive
   - Click "+ New" → "File upload"
   - Select your PDF (e.g., "Birth_Certificate.pdf")
   - Wait for upload

2. Make it shareable
   - Right-click the PDF
   - Click "Share"
   - Change to "Anyone with the link"
   - Make sure it says "Viewer"
   - Click "Copy link"

3. Paste in the "Download Link" column
   - Replace "https://drive.google.com/file/d/YOUR_FILE_ID/view?usp=sharing"
   - With your actual link
   - Save
```

---

## 📊 Column Guide

### **Form Name** (Column A)
- The official name of the form
- What users will see
- Examples:
  - "Birth Certificate Application"
  - "Trade License Form"
  - "Residential Proof"

### **Category** (Column B)
- Must be EXACTLY one of these:
  - `Vital Records`
  - `Residential`
  - `Educational`
  - `Business`
  - `Agriculture`
  - `Health`
  - `Other`
- Used to group forms in website

### **Description** (Column C)
- Simple explanation (1-2 sentences)
- What the form is for
- Examples:
  - "Apply for birth certificate with proof of identification"
  - "Register your business trade in Kamle District"
  - "Get proof of residential address"

### **Download Link** (Column D)
- Google Drive shareable link
- Format: `https://drive.google.com/file/d/[ID]/view?usp=sharing`
- Must be shareable (Anyone with link)

### **Status** (Column E)
- `Active` = Available for download now
- `Coming Soon` = Will be available soon
- `Updated` = Recently updated

### **Last Updated** (Column F)
- Date in format: YYYY-MM-DD
- Example: 2026-08-13
- When form was last updated

---

## ✅ Formatting Tips (Optional)

To make your Excel file look professional:

### **Bold the Header Row**
```
1. Click on Row 1
2. Press Ctrl+B
3. Header row becomes bold
```

### **Add Colors**
```
1. Select Row 1 (headers)
2. Right-click → Format cells
3. Choose light gray background
4. Makes it stand out
```

### **Auto-fit Columns**
```
1. Select all columns (Ctrl+A)
2. Double-click column border
3. Columns auto-resize to fit content
```

### **Freeze Header Row**
```
1. Click on Row 2
2. View → Freeze → 1 row
3. Header stays visible when scrolling
```

---

## 🎯 Quick Checklist

- [ ] Downloaded the CSV template
- [ ] Converted to Excel (.xlsx) or Google Sheets
- [ ] Removed example forms (or kept some as examples)
- [ ] Added your own forms
- [ ] For each form:
  - [ ] Uploaded PDF to Google Drive
  - [ ] Got shareable link
  - [ ] Pasted link in "Download Link" column
- [ ] Set correct Category for each form
- [ ] Updated Status (Active/Coming Soon)
- [ ] Updated Last Updated date
- [ ] Saved the file

---

## 🚀 Next Steps

After your Excel/Sheets is ready:

1. **Publish as CSV** (if using Google Sheets):
   - File → Publish to web
   - Format: CSV
   - Click Publish
   - Copy the URL

2. **Update the HTML file** with your Sheet ID

3. **Test the website**

4. **Share with citizens**

---

## 💡 Pro Tips

### **Tip 1: Start with Examples**
Keep a few example forms in your sheet. They show users what's available without cluttering the list.

### **Tip 2: Update Regularly**
Update the "Last Updated" date when you change a form. Users know it's current.

### **Tip 3: Use Categories Wisely**
Use the right category so forms group correctly on the website.

### **Tip 4: Test Links**
Before publishing, click each Download Link to make sure it works.

### **Tip 5: Backup Your Work**
Keep a copy of your file locally. Never rely on just Google Drive.

---

## ❓ Common Questions

### **Q: Can I add more forms later?**
**A:** Yes! Just add new rows. The website updates automatically.

### **Q: Can I delete example forms?**
**A:** Yes! Just delete the row. The website updates automatically.

### **Q: What if I make a mistake?**
**A:** Google Sheets/Excel keeps versions. You can:
- In Google Sheets: File → Version history → Restore previous version
- In Excel: Ctrl+Z (Undo) or save a backup

### **Q: How many forms can I add?**
**A:** Unlimited! The website works with any number of forms.

### **Q: Do I need to republish the HTML?**
**A:** No! The website automatically reads from your Sheet. Just update the Sheet.

---

## 📧 Sharing the Excel File

### **Option 1: Share Excel File**
```
1. Send the .xlsx file via email
2. Others can download and edit
3. They need to upload back to Google Drive
```

### **Option 2: Share Google Sheet Link**
```
1. Get the sheet link
2. Send to others
3. They can edit together in real-time
4. Better for team collaboration
```

---

## 🎉 You're Ready!

Your Excel template is ready to use. Just:
1. Edit it with your forms
2. Upload to Google Drive
3. Publish as CSV
4. Update HTML with Sheet ID
5. Share with citizens

**That's all there is to it!** ✨

---

**Questions? Refer back to the "SIMPLE_IMPLEMENTATION_GUIDE.md" for detailed step-by-step instructions.**
