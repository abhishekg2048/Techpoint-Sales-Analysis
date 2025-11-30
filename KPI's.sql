-- Total Sales in Millions
SELECT CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2)) 
AS Total_Sale_in_Millions FROM electronics_sales_dataset;

-- Average Sales
SELECT CAST(AVG(Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales FROM electronics_sales_dataset;

-- Number of Items Sold
SELECT COUNT(*) AS Number_of_Items FROM electronics_sales_dataset;

SELECT CAST(AVG(Rating) AS DECIMAL(10,0))AS Average_Rating FROM electronics_sales_dataset;