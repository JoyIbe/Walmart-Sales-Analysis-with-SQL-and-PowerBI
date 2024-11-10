# Walmart Sales Data Analysis
## About
This project aims to analyze walmart'S sales performance to determine the best selling categories of products, sales trends, customer demographics to optimize sales performance and lay strategies to adequately improve sales profit and revenue.
This dataset contain 24 columns and 8399 rows.

## Tools and Methodology

TOOLS: Postgresql and Power BI

METHODOLOGY:
Data Cleaning: This process includes handling inconsistencies in the data, column creation, data formatting and validation to facilitate regularity and accuracy. These processes was carried out on  both postgresql and power query in power bi.

Data Processing: Used Power BI's DAX functionality to create a new table and calculate custom measures like sales growth rate, profit margin, etc in order to fully uncover valuable insights within the dataset.

Data Modeling: Leveraged the power of time-series analysis (year-over-year comparison) by establishing this relationship to unlock deeper insights into sales performance. 

Data Visualization: Built  interactive dashboards in Power BI to efficiently display key metrics and trends to improve sales performance.  

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

## Analysis Findings
1. There was a significant jump in sales in 2015 with a total of  $14.92M with an 8.24% increase from the previous year. 
2. Revenue reached $6.60bn, a significant 37.88% growth year-over-year.
3. Walmart operates on a high-volume, low-margin business model. This means they aim to sell a large quantity of goods at lower prices, which attracts a huge number of customers. Even with such thin margins, the sheer volume of sales can lead to substantial overall profits. According to this dataset, the total profit margin decreased by 35.0% compared to the previous year, reaching 2.31%.
4. The gross profit remained strong at $6.58bn, a 35.8% increase year-over-year.
5.  Corporate and Home Office segments contribute the most to total sales quantity.
6. The 50-59 age group shows the largest customer segment with 35.46% followed by 40-49 at 35.35%.
7. Technology is the top-performing category in terms of sales, profit and revenue.
8. California has the highest sales, followed by Texas and New York. However, Alabama remits the highest revenue with over 664M followed by Newyork at 627M and  California at 535M.
9. Sales fluctuate throughout the year with peak in December.
10. Customers most preferred shipping mode is regular air accounting for 74.56% of shipments.
11. Central region has the highest sales and revenue, followed by West and East.
12. High-priority orders constitute the largest portion of orders, followed by Medium and Not Specified.
    
## Dashboard
![WR1](<img width="552" alt="WR 1" src="https://github.com/user-attachments/assets/bf3daeed-4f85-4cd4-ad8b-d32420f7b50a">)

![WR2](<img width="584" alt="WR 2" src="https://github.com/user-attachments/assets/6645df6d-c284-4293-aa9b-8d54227c098b">)

![WR3](<img width="553" alt="WR 3" src="https://github.com/user-attachments/assets/2f40b268-89d8-4e40-8d48-d15b3a9c7d71">)

## Limitation
The major limitation perceived in this data is the blank cells in customer's age column with over 10% empty records which may affect accuracy in finding out age group with highest sales performance. To solve this, they were recorded as "unknown" and covered 12.54% of the age distribution.

Lastly, this dataset is not very recent. 

## Recommendation
1. Develop targeted marketing strategies for best performing region and states to further capitalize on its strong performance and boost sales in low performing areas.
2. Consider expanding into new markets or region with high growth potential.
3. To improve profit margin in the coming year, consider analyzing the factors contributing to the decline in profit margin.
4. Analyze the competitive landscape in targeted markets and develop appropriate strategies.
5. Prioritize customer satisfaction by providing excellent customer service and addressing customer concerns promptly.
6. Continuously optimize the supply chain to ensure efficient product delivery and reduce costs.
7. Invest in e-commerce initiatives to capture the growing online market.


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


