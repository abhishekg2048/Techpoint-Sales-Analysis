SELECT * FROM electronics_sales_dataset;

-- 1. Sales by Power Usage
SELECT Power_Usage, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM electronics_sales_dataset GROUP BY Power_Usage ORDER BY Total_Sales DESC;

-- 2. Sales by Item Type
SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM electronics_sales_dataset GROUP BY Item_Type ORDER BY Total_Sales DESC;

-- 3. Power Usage By Total Sales
SELECT 
    Outlet_Location_Type,
	CAST(SUM(CASE WHEN Power_Usage = 'Low' THEN Total_Sales ELSE 0 END) AS DECIMAL (10,2)) AS Low_Power_Usage,
    CAST(SUM(CASE WHEN Power_Usage = 'High' THEN Total_Sales ELSE 0 END) AS DECIMAL(10,2)) AS High_Power_Usage,
    CAST(SUM(CASE WHEN Power_Usage = 'Medium' THEN Total_Sales ELSE 0 END) AS DECIMAL (10,2)) AS Medium_Power_Usage
FROM electronics_sales_dataset
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

-- 4. Total Sales by Outlet Establishment
SELECT Outlet_Establishment_Year,
       CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
       CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Avg_Sales,
       COUNT(*) AS No_Of_Items,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM electronics_sales_dataset
GROUP BY Outlet_Establishment_Year
ORDER BY Total_Sales DESC;