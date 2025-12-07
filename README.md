# ecommerce-analytics-olist
“End-to-end data analytics project using Python, SQL, and Tableau using Olist E-commerce dataset”

# 📦 Olist E-Commerce Data Analytics Project

This project analyzes the Brazilian Olist e-commerce dataset using **Python, SQL, and Tableau**.  
It includes data cleaning, feature engineering, SQL analysis, and a Tableau dashboard for insights.

This was created as part of my learning journey in data analytics and to build a portfolio project suitable for internship applications.

---

## 📊 Project Overview

The goal of this project was to:

- Clean and merge the Olist e-commerce datasets  
- Create new features like delivery time, late delivery flag, total price, etc.  
- Load the cleaned data into SQLite  
- Write SQL queries for business insights  
- Design an interactive Tableau dashboard  

---

## 🛠 Tools & Technologies

- **Python (Pandas, SQLite3)**  
- **SQL (SQLite)**  
- **Tableau Desktop / Tableau Public**  
- **Google Colab**  
- **GitHub Desktop**  

---

## 📁 Folder Structure
ecommerce-analytics-olist/
│
├── data/                       # Cleaned dataset + SQL exported tables
├── sql/                        # All SQL queries used in the project
├── python/                     # Google Colab notebook (cleaning + EDA)
├── tableau/                    # Tableau workbook + screenshots
├── images/                     # Charts and visuals used in README/EDA
└── README.md                   # Project documentation
---

## 🧹 Data Cleaning & Feature Engineering

In Python, I performed the following:

- Merged orders, customers, items, payments, reviews  
- Handled missing & invalid values  
- Created new columns:  
  - `delivery_days`  
  - `estimated_delivery_days`  
  - `is_late_delivery`  
  - `total_price`  
  - `order_month`  
- Removed negative/outlier delivery times  

Final cleaned dataset shape: **115,394 rows × 29 columns**

Notebook is available here:  
`python/olist_data_cleaning_and_eda.ipynb`

---

## 🗄 SQL Analysis

After loading data into SQLite, I ran queries for insights:

- Orders by state  
- Revenue by product category  
- Monthly order trends  
- Delivery performance  
- Review score patterns  
- Top product categories  
- Freight vs product price  

Full list of queries here:  
`sql/queries.sql`

---

## 📈 Tableau Dashboard

The interactive dashboard includes:

- Orders by state (map)  
- Monthly order trends  
- Revenue by category  
- Delivery performance  
- Review score distribution  

### 📌 Tableau Public Link  
(Add after publishing)

### 🖼 Dashboard Preview  
(Add screenshot file: `tableau/dashboard_screenshot.png`)

---

## 🎯 Key Insights

Some insights from the analysis:

- "Health & Beauty" and "Bed/Bath/Table" are top revenue-generating categories.  
- Delivery delays vary significantly between states.  
- Majority of customers rate their experience 4 or 5 stars.  
- Sales peaked during late 2017 and early 2018.  

---

## 📬 Contact

If you're reviewing this for internship opportunities, feel free to reach out!

**Name:** _Your Name_  
**Email:** _your.email@gmail.com_  
**LinkedIn:** _your profile link_  

---
