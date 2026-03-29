SELECT * FROM blinkt_proj.sales_data;
/* Check if everything loaded correctly:*/
SELECT * from sales_data limit 5;
/* Check missing values:*/
SELECT COUNT(*) 
FROM sales_data
WHERE Item_Weight IS NULL;
/* Create Derived Columns (for Better Insights)*/
      /* Age Groups for Outlets*/
SELECT Outlet_Identifier,
       CASE 
           WHEN Outlet_Age < 10 THEN 'New'
           WHEN Outlet_Age BETWEEN 10 AND 20 THEN 'Mid'
           ELSE 'Old'
       END AS Outlet_Age_Group
FROM sales_data;
/*Price Range Buckets*/
SELECT Column1,
       CASE
           WHEN Item_MRP < 50 THEN 'Low'
           WHEN Item_MRP BETWEEN 50 AND 150 THEN 'Medium'
           ELSE 'High'
       END AS Price_Category
FROM sales_data;
Alter table sales_data rename column Column1 to Item_Id;
SELECT Item_Id,
       CASE
           WHEN Item_MRP < 50 THEN 'Low'
           WHEN Item_MRP BETWEEN 50 AND 150 THEN 'Medium'
           ELSE 'High'
       END AS Price_Category
FROM sales_data;

/*Total Sales by Item Type*/
SELECT Item_Type,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

/*Sales by Outlet Type*/
SELECT Outlet_Type,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_data
GROUP BY Outlet_Type;

/*Sales by Location Tier*/
SELECT Outlet_Location_Type,
       SUM(Item_Outlet_Sales) AS Revenue
FROM sales_data
GROUP BY Outlet_Location_Type;

/*Average Sales by Fat Content*/
SELECT Item_Fat_Content,
       AVG(Item_Outlet_Sales) AS Avg_Sales
FROM sales_data
GROUP BY Item_Fat_Content;

/*Create a VIEW for Power BI / Dashboard

This makes visualization tools faster & easier.*/
CREATE VIEW sales_dashboard AS
SELECT 
    Item_Type,
    Outlet_Type,
    Outlet_Location_Type,
    SUM(Item_Outlet_Sales) AS Total_Sales,
    AVG(Item_MRP) AS Avg_Price,
    COUNT(*) AS Total_Items
FROM sales_data
GROUP BY Item_Type, Outlet_Type, Outlet_Location_Type;











