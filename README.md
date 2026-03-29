# Blinkit-Retail-Grocery-Sales
🚀 Project Overview
This project presents an end-to-end data analytics solution for retail sales data. The goal is to analyze product performance, outlet efficiency, and sales trends to support business decision-making.
The project covers the complete pipeline:
👉 Data Cleaning → Data Storage → SQL Analysis → Power BI Dashboard

🎯 Business Objectives
Analyze overall sales performance
Identify top-performing product categories
Evaluate outlet performance across different locations
Understand pricing impact on sales
Generate actionable business insights

🛠️ Tools & Technologies Used
Python (Pandas) → Data Cleaning & Transformation
MySQL → Data Storage & Querying
SQL → Data Analysis
Power BI → Data Visualization & Dashboard

🔄 Project Workflow
🔹 1. Data Cleaning (Python - Pandas)
Checked data shape, sample, and data types
Handled missing values:
Filled Item_Weight using mean
Filled Outlet_Size using mode
Removed duplicate values
Standardized categorical values:
LF, low fat → Low Fat
reg → Regular
Feature Engineering:
Created Outlet_Age from establishment year
Rounded numerical columns for consistency

🔹 2. Data Loading (MySQL)
Created database table
Inserted cleaned data using mysql.connector
Verified successful data upload

🔹 3. SQL Analysis
Performed exploratory data analysis using SQL:
Sales by Item Type
Sales by Outlet Type
Sales by Location Tier
Average Sales by Fat Content
Created derived columns:
Outlet Age Group (New, Mid, Old)
Price Category (Low, Medium, High)
📌 Created a VIEW (sales_dashboard) for Power BI optimization

🔹 4. Power BI Dashboard
📌 Key KPIs
💰 Total Sales: ₹18.59M
📦 Total Items: 1559
📊 Average Sales: ₹140.99
💲 Average Price: ₹76.10

📊 Dashboard Features
Sales by Item Type (Bar Chart)
Sales by Outlet Type (Donut Chart)
Sales by Location Tier (Pie Chart)
MRP vs Sales (Scatter Plot)
Sales by Outlet Age (Bar Chart)
Top & Bottom Performing Products
Sales by Outlet Type & Item Type

💡 Key Insights
Tier 3 cities generate the highest revenue
Supermarket Type 1 outlets are top performers
Fruits & Vegetables contribute the most to sales
Higher MRP items tend to generate higher revenue
Older outlets perform better due to customer trust

📁 Project Structure
Blinkit-Sales-Analysis/
│
├── data/
│   └── raw_data.xlsx
│
├── python/
│   └── data_cleaning.py
│
├── sql/
│   └── analysis.sql
│
├── powerbi/
│   └── dashboard.pbix
│
├── assets/
│   └── dashboard.png
│
└── README.md


<img width="1012" height="644" alt="Blinkit Dashboard" src="https://github.com/user-attachments/assets/ae731a42-42fe-4543-a9c4-55b60594d955" />



📌 How to Run This Project
1️⃣ Clone Repository
git clone https://github.com/your-username/blinkit-sales-analysis.git
2️⃣ Run Python Script
Clean the dataset using Pandas
3️⃣ Load Data into MySQL
Create table
Insert cleaned data
4️⃣ Run SQL Queries
Perform analysis
Create VIEW
5️⃣ Open Power BI
Connect to MySQL
Load sales_dashboard view
Build visuals

⭐ Project Highlights
✔ End-to-End Data Analytics Project
✔ Real-world business problem solving
✔ Strong use of SQL & Power BI
✔ Clean and interactive dashboard
✔ Insight-driven storytelling

📬 Contact
If you have any questions or feedback, feel free to connect!
⭐ If you like this project
Give it a ⭐ on GitHub!
