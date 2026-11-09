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
- Discount analysis indicates a potential need to review discount policies.

*Note: These findings show an association, not necessarily causation.*

### 5. Customer Analysis

- Tamara Chand was the most profitable customer, generating $8,981.32 in profit.
- Cindy Stewart generated the largest customer-level loss: -$6,626.39.
- Some high-revenue customers generated negative profit.

### 6. Sales Trends

- Sales increased from $484,247.50 in 2014 to $733,215.26 in 2017.
- 2016 recorded sales growth of approximately 29.47%.
- 2017 recorded sales growth of approximately 20.36%.

### 7. Shipping Analysis

Average order processing time (Order Date to Ship Date):

| Shipping Mode | Average Processing Time |
|---|---:|
| Same Day | 0.04 days |
| First Class | 2.18 days |
| Second Class | 3.24 days |
| Standard Class | 5.01 days |

*This metric measures processing time before shipment, not delivery time to the customer.*

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

## Dashboard

The Power BI report contains two pages:

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
- Interactive Year, Region and Category filters

## Recommendations

Based on the analysis:

1. Review the profitability of the Furniture category.
2. Reassess discount policies, especially high-discount transactions.
3. Investigate products and customers generating negative profit.
4. Analyze regional differences to identify improvement opportunities.
5. Monitor monthly sales trends and changes in profitability.

## Limitations

- The dataset represents historical retail transactions from 2014–2017.
- Discount relationships are observational and do not establish causality.
- Shipping analysis measures order-to-ship processing time, not final delivery time.


