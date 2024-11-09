# Walmart Sales Data Analysis
## About
This project aims to analyze walmart sales performance to determine the best selling categories of products, sales trends, customer demographics to optimize sales performance and lay strategies to adequately improve sales profit and revenue.
This dataset contain 24 columns and 8399 rows.

## Data cleaning and processing:
1. Excel: Leveraged Ms Excel to remove redundant values, trim, sort and filter through rows of data to understand the dataset and verify maximum length for each character.
2. Postgresql: During the analysis, new column(s) was extracted and added to assist ascertain vital information required to analyze the data efficiently.
3. Power BI: 



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
For the rest of the query, check the [walmart.sql](https://github.com/JoyIbe/Walamart-Sales-Analysis/blob/main/walmart.sql)
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
## Findings and Conclusion
1. Geographic Insights: Top cities/states like Madison, Alabama and the central region with the largest revenue and profit highlights the need for more products distributions in this areas to enhance growth in sales.
2. Product Categorization: Categorizing content based on average sales helps us procure deep insights into products that are making more sales in the market.
3. Customer Demographics: The findings of this analysis seek to establish the various customer segments to analyze the buying patterns, revenue of each segment, most preferred ship mode, identify our target customers to facilitate customer satisfaction.
4. Content Evaluation: This dataset contains diverse range of attributes which uncovers sales trends of products. This result can assist in evaluating the efficiency of each sales strategy walmart applies and the alterations needed to acquire more sales.


