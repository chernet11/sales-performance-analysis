# Sales Performance Analysis

## Project Overview

An end-to-end data analytics project based on the Sample Superstore dataset (2014–2017).

The goal of this project is to analyze sales performance, profitability, customer behavior, product performance, discount impact, and shipping operations to identify business trends and provide data-driven recommendations.

## Business Objectives

- Analyze overall sales and profit performance.
- Identify the most and least profitable product categories.
- Evaluate regional and customer segment performance.
- Investigate the relationship between discounts and profitability.
- Analyze monthly and annual sales trends.
- Evaluate shipping processing time across shipping methods.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python (Pandas, Matplotlib) | Data cleaning, exploration and analysis |
| PostgreSQL | Data storage and SQL analysis |
| SQL | Business queries and aggregations |
| Power BI | Interactive dashboard and visualization |
| Git & GitHub | Version control and project documentation |

## Dataset

**Sample Superstore Dataset**

- Period: 2014–2017
- Records: 9,994
- Unique orders: 5,009
- Unique customers: 793
- Original columns: 21
- Final dataset columns: 25

## Key Performance Indicators

| Metric | Result |
An end-to-end data analytics project focused on analyzing retail sales, profitability, customer behavior, product performance, discount impact, and shipping operations.

The project demonstrates a complete analytical workflow, from data preparation and exploratory analysis to SQL-based business analysis and interactive Power BI reporting.

## About the Sample Superstore Dataset

**Sample Superstore** is a widely used educational dataset designed for practicing data analysis and business intelligence.

It represents the sales operations of a fictional retail company selling office supplies, furniture, and technology products.

The dataset contains transactional information, including:
- Customer information and customer segments
- Product categories and sub-categories
- Sales, profit, quantity, and discounts
- Order dates and shipping dates
- Geographic information, including regions, states, and cities
- Shipping methods

The dataset is commonly used to practice exploratory data analysis, SQL queries, business intelligence, and dashboard development.

**Important:** The dataset contains fictional business transactions and should not be interpreted as actual company performance.

### Dataset Overview

| Attribute | Value |
|---|---:|
| Time period | 2014–2017 |
| Original records | 9,994 |
| Unique orders | 5,009 |
| Unique customers | 793 |
| Original columns | 21 |
| Final processed columns | 25 |

## Project Objectives

- Analyze overall sales and profitability.
- Identify the most and least profitable product categories.
- Evaluate regional and customer segment performance.
- Investigate the relationship between discounts and profitability.
- Analyze monthly and annual sales trends.
- Evaluate shipping processing time.
- Identify customers and products generating losses.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning, exploratory data analysis |
| Pandas | Data manipulation and analysis |
| Matplotlib | Data visualization |
| PostgreSQL | Database management and SQL analysis |
| SQL | Business queries and aggregations |
| Power BI | Interactive dashboards and reporting |
| Git & GitHub | Version control and documentation |

## Key Performance Indicators

| Metric | Result |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Total Orders | 5,009 |
| Total Customers | 793 |
| Overall Profit Margin | 12.47% |

## Key Business Insights

### 1. Category Performance

- Technology generated the highest profit: $145,454.95.
- Office Supplies generated $122,490.80 in profit.
- Furniture had a significantly lower profit margin of 2.49%.

### 2. Regional Performance

- The West region generated the highest profit.
- The Central region generated the lowest profit among the four regions.
- All four regions were profitable overall.

### 3. Product Performance

- Copiers generated the highest sub-category profit: $55,617.82.
- Tables generated the largest sub-category loss: -$17,725.48.
- Bookcases and Supplies also recorded negative profitability.

### 4. Discount Impact

- Higher discount levels were associated with lower average profitability.
- Transactions with discounts between 41% and 80% had negative average profit.
- The findings suggest that discount policies may require further evaluation.

*Note: These findings indicate an association, not necessarily causation.*

### 5. Customer Analysis

- Tamara Chand was the most profitable customer, generating $8,981.32 in profit.
- Cindy Stewart generated the largest customer-level loss: -$6,626.39.
- Some high-revenue customers generated negative profit.

### 6. Sales Trends

- Sales increased from $484,247.50 in 2014 to $733,215.26 in 2017.
- 2016 recorded sales growth of approximately 29.47%.
- 2017 recorded sales growth of approximately 20.36%.

### 7. Shipping Analysis

Average order-to-ship processing time:

| Shipping Mode | Average Processing Time |
|---|---:|
| Same Day | 0.04 days |
| First Class | 2.18 days |
| Second Class | 3.24 days |
| Standard Class | 5.01 days |

*This metric measures the time between order placement and shipment, not final delivery time.*

## Project Structure

```text
sales-performance-analysis/
│
├── dashboard/
│   ├── dashboard_screenshots/
│   ├── Superstore Sales Analytics.pdf
│   └── Superstore Sales Analytics.pbix
│
├── data/
│   └── superstore_final.csv
│
├── python/
│   └── sales_analysis.ipynb
│
├── sql/
│   └── sales_analysis.sql
│
├── .gitignore
└── README.md
```

## Python Analysis

The Jupyter Notebook contains the following stages:

- Project setup and data loading
- Initial data exploration
- Data quality inspection
- Data cleaning and preparation
- Exploratory data analysis
- Regional sales and profit analysis
- Product and sub-category analysis
- Discount and profitability analysis
- Customer analysis
- Annual and monthly sales trends
- Shipping performance analysis
- Data export

## SQL Analysis

PostgreSQL was used to perform business-oriented analysis, including:

- Sales and profit aggregation
- Category and sub-category performance
- Regional analysis
- Customer profitability
- Discount impact
- Annual and monthly trends
- Shipping performance
- Customer segment analysis

## Power BI Dashboard

The interactive report contains two pages.

**1. Executive Overview**
- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Sales by Category
- Profit by Category
- Monthly Sales Trend

**2. Sales & Customer Analysis**
- Sales by Region
- Top 10 Products by Sales
- Top 10 Most Profitable Customers
- Sales by Customer Segment
- Interactive Year, Region, and Category filters

## Business Recommendations

Based on the analysis:

1. Review the profitability of the Furniture category.
2. Reassess discount policies, especially high-discount transactions.
3. Investigate products and customers generating negative profit.
4. Analyze regional differences to identify improvement opportunities.
5. Monitor monthly sales trends and changes in profitability.

## Limitations

- The dataset represents fictional historical retail transactions from 2014–2017.
- Discount relationships are observational and do not establish causality.
- Shipping analysis measures order-to-ship processing time, not final delivery time.
- The findings describe the provided dataset and should not automatically be generalized to real retail businesses.

## Vladimir Charnetski

Data Analytics Portfolio Project

**Project Status:** Completed