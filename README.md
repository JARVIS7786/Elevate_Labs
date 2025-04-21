#  Customer Personality Analysis – Data Cleaning Summary

 
This is an overview of how I cleaned up the marketing campaign dataset for further analysis. The original file had few errors


## What I Did

### 1. Cleaned Up Missing Data
Some rows were missing income values, so I dropped those to avoid skewing the analysis. If you don’t know how much someone earns, it’s hard to analyze their purchasing behavior!

### 2. Removed Duplicate Rows
There were a few duplicate entries hanging around, so I cleared them out using pandas’ `drop_duplicates()` — no need for redundancy.

### 3. Fixed Messy Text
Things like `Education` and `Marital_Status` had inconsistent formatting (like weird spaces or random capital letters), so I standardized them. Now everything looks clean and uniform — just the way we like it.

### 4. Converted Dates
The `Dt_Customer` column (customer join date) was originally just a string. I converted it into a proper datetime format so we can use it for time-based analysis later on.

### 5. Renamed Columns
To make things easier to work with, I renamed all the columns to lowercase with underscores and spaces now consistent and code-friendly.

### 6. Checked and Fixed Data Types
Made sure numerical columns like income, kidhome, were all in the right format (`float` or `int`). Also added an age column (calculated as 2025 - year of birth)

### 7.Calculated total accepted CMP
To find out that how much a person has attended the campaign

## 📦 Final Output
You’ll find the cleaned dataset in this repo as:  
**`Customer_personality_basics`**

