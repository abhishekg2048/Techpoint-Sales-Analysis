--  5. Total Sales by Outlet Size
SELECT Outlet_Size,
       CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
       CAST((SUM(Total_Sales)*100.0/SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM electronics_sales_dataset
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- 6. Total Sales by Outlet Location
SELECT Outlet_Location_Type,
       CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
       CAST(SUM(Total_Sales)*100.0/SUM(SUM(Total_Sales)) OVER() AS DECIMAL(10,2)) AS Sales_Percentage,
       CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
       COUNT(*) AS No_Of_Items,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM electronics_sales_dataset
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

-- 7. All Metrics By Outlet Type
SELECT Outlet_Type,
       CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
       CAST(SUM(Total_Sales)*100.0/SUM(SUM(Total_Sales)) OVER() AS DECIMAL(10,2)) AS Sales_Percentage,
       CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
       COUNT(*) AS No_Of_Items,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM electronics_sales_dataset
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC