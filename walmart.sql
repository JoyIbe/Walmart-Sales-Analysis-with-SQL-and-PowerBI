--Create Table 
DROP TABLE IF EXISTS walmart;
CREATE TABLE walmart( 
	City varchar(30),
	Customer_Age INT,
	Customer_Name varchar(50),
	Customer_Segment varchar(30),
	Discount float,
	Number_of_Records INT,
	Order_Date Date,
	Order_ID INT,
	Order_Priority varchar(20),
	Order_Quantity INT,
	Product_Base_Margin float,
	Product_Category varchar(30),
	Product_Container varchar(30),
	Product_Name varchar(100),
	Product_Sub_Category varchar(50),
	Profit float,
	Region varchar(10),
	Row_ID INT,
	Sales float,
	Ship_Date Date,
	Ship_Mode varchar(30),
	Shipping_Cost float,
	State varchar(20),
	Unit_Price float,
	Zip_Code INT
);
--EDA 
SELECT* FROM walmart;
SELECT customer_name, customer_age, city
FROM walmart
ORDER BY 2 
LIMIT 300;
SELECT MAX(customer_age) FROM walmart; 
SELECT * FROM walmart 
WHERE order_priority ILIKE '%high%';

-- Adding new column for month
SELECT
	order_date,
	EXTRACT (MONTH FROM order_date) as month
FROM walmart;

ALTER TABLE walmart ADD COLUMN month VARCHAR(10);

UPDATE walmart
SET month = EXTRACT (MONTH FROM order_date);

-- 21 Problems and their Solutions

--1.How many unique cities does the data have?
--1421/8339 uique cities
SELECT DISTINCT city,
COUNT (*)
FROM walmart
GROUP BY 1;

--2.Show cites with walmart branch in each state?
SELECT DISTINCT city, state
FROM walmart;

--3.How many unique product category does the data have
-- 3;
SELECT DISTINCT product_category,
COUNT (*)
FROM walmart
GROUP BY 1;

--4.What is the most common ship mode?
-- Regular Air
SELECT ship_mode, SUM(order_id) id
FROM walmart
GROUP BY 1
ORDER BY 2 DESC; 

--5.What is the five most selling product (name) ?
SELECT product_name, SUM(order_quantity) QTY
FROM walmart
GROUP BY 1
ORDER BY 2 DESC 
LIMIT 5

-- 6.What is the total revenue by month?
WITH Calculation AS 
(
SELECT month,
	SUM(sales) total_sales,
	SUM(unit_price) total_unit
FROM walmart
GROUP BY 1
)
SELECT month, 
total_sales * total_unit AS revenue
FROM Calculation
ORDER BY 2 DESC

--7.What month had the largest COGS?
--COGS is the measure of Cost Of Goods Sold
-- COGS = unit_price * order_quantity
WITH Calculation AS 
(
SELECT month,
	SUM(order_quantity) total_qty,
	SUM(unit_price) total_unit
FROM walmart
GROUP BY 1
)
SELECT month, 
total_qty * total_unit AS COGS
FROM Calculation
ORDER BY 2 DESC;

--8.What product category had the largest revenue?
WITH Calculation AS 
(
SELECT product_category,
	SUM(sales) total_sales,
	SUM(unit_price) total_unit
FROM walmart
GROUP BY 1
)
SELECT product_category, 
total_sales * total_unit AS revenue
FROM Calculation
ORDER BY 2 DESC;

--9.What is the city with the largest revenue?
WITH Calculation AS 
(
SELECT city,
SUM(sales) total_sales,
SUM(unit_price) total_unit
FROM walmart
GROUP BY 1
)
SELECT product_category, 
total_sales * total_unit AS revenue
FROM Calculation
ORDER BY 2 DESC;

-- 10.Fetch each product category and add a column to those product category showing "Good", "Bad". 
-- Good if its greater than average sales. 
SELECT product_category, AVG(sales)
FROM walmart
GROUP BY 1;

SELECT product_category, sales,
	CASE WHEN sales >= avg_sales THEN 'Good'
		ELSE 'Bad'
END status
FROM walmart,
(SELECT AVG(sales) avg_sales FROM walmart) avg_table;


--11.Which city sold more products than average product sold?

SELECT city, 
    SUM(order_quantity) qnty
FROM walmart
GROUP BY 1
HAVING SUM(order_quantity) > (SELECT AVG(order_quantity) FROM walmart);


--12.What is the most common product category by age?
SELECT  product_category, customer_age,
	COUNT(customer_age)
FROM walmart
GROUP BY 1,2
ORDER BY 3 DESC

--13.Number of sales made in each year

SELECT 
   EXTRACT(YEAR FROM order_date) AS sale_year,
    COUNT(*) AS total_sales
FROM walmart
GROUP BY 1 
ORDER BY 2 DESC ;

--14.Which of the customer segment brings the most revenue?
WITH Calculation AS 
(
SELECT customer_segment,
SUM(sales) total_sales,
SUM(unit_price) total_unit
FROM walmart
GROUP BY 1
)
SELECT customer_segment, 
total_sales * total_unit AS revenue
FROM Calculation
ORDER BY 2 DESC;

--15.Which city and state has the largest profit?
SELECT city, state,
	ROUND(SUM(profit::numeric), 2) AS total_profit
FROM walmart
GROUP BY 1,2
ORDER BY 3 DESC 

--16.Which customer segment brings the most profit?
SELECT customer_segment,
	ROUND(AVG(profit::numeric), 2) AS total_profit
FROM walmart
GROUP BY 1
ORDER BY 2 DESC; 

--17.How many unique customer segment does the data have?
SELECT DISTINCT customer_segment,
COUNT (*)
FROM walmart
GROUP BY 1
ORDER BY 2 DESC;

--18.How many unique region does the data have?
SELECT region,
COUNT (*)
FROM walmart
GROUP BY 1
ORDER BY 2 DESC;

--19.What is the most common customer segment?
SELECT customer_segment, order_quantity,
COUNT (*)
FROM walmart
GROUP BY 1,2
ORDER BY 3 DESC;

WITH SegmentCounts AS (
    SELECT customer_segment,
        COUNT(*) AS count,
        RANK() OVER (ORDER BY COUNT(*) DESC) AS segment_rank
    FROM walmart
    GROUP BY 1       
)
SELECT customer_segment, count
FROM SegmentCounts
WHERE segment_rank = 1;

--20.Which customer buys the most?
SELECT customer_name, order_quantity,
COUNT (*)
FROM walmart
GROUP BY 1,2
ORDER BY 3 DESC;

--21.What is the age of most of the customers?
--46
SELECT customer_age,
	COUNT (*)
FROM walmart
GROUP BY 1
ORDER BY 2 DESC
;



