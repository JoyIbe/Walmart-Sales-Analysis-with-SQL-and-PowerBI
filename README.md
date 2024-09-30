# Walmart Sales Data Analysis
## About
This project entailed analyzing the sales performance of walmart to determine the best selling categories of products, sales trends, customer demographics to optimize sales performance and lay strategies to adequately improve sales profit and revenue.
This dataset contain 24 columns and 8399 rows.

## Exploratory Data Analysis(EDA): 
An EDA is conducted to answer the following business problems listed below:

1. How many unique cities does the data have?
2. Show cites with walmart branch in each state?
3. How many unique product category does the data have?
4. What is the most common ship mode?
5. What is the five most selling product (name) ?
6. What is the total revenue by month?
7. What month had the largest COGS?
8. What product category had the largest revenue?
9. What is the city with the largest revenue?
10. Fetch each product category and add a column to those product category showing "Good", "Bad". Good if its greater than average sales.
11. Which city sold more products than average product sold?
12. What is the most common product category by age?
13. Number of sales made in each year
14. Which of the customer segment brings the most revenue?
15. Which city and state has the largest profit?
16. Which customer segment brings the most profit?
17. How many unique customer segment does the data have?
18. How many unique region does the data have?
19. What is the most common customer segment?
20. Which customer buys the most?
21. What is the age of most of the customers?

## Code:
For the rest of the query, check the 
```sql
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
```


