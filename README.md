# Sales Performance Analysis

## Project Overview

This project explores retail sales data to identify business trends, evaluate profitability, analyze customer behavior, and investigate the relationship between discounts and profit.

The analysis uses SQL and PostgreSQL, with Power BI planned for interactive visualization.

## Dataset

Sample Superstore dataset (2014–2017).

| Metric | Value |
|---|---:|
| Records | 9,994 |
| Unique orders | 5,009 |
| Unique customers | 793 |
| Total sales | $2,297,200.86 |
| Total profit | $286,397.02 |
| Overall profit margin | 12.47% |

## Tools & Technologies

- PostgreSQL
- SQL
- Power BI
- Visual Studio Code
- Git & GitHub

## Analysis Areas

1. Sales performance and yearly trends
2. Product and category profitability
3. Regional performance
4. Customer profitability
5. Discount impact analysis
6. Shipping performance
7. Customer segment analysis

## Key Business Insights

- Total sales reached $2.30M, generating $286.40K in profit.
- Technology generated the highest category profit ($145.45K).
- Furniture had the lowest category profit margin (2.49%).
- The West region generated the highest total profit.
- Copiers were the most profitable sub-category ($55.62K).
- Tables generated the largest sub-category loss (-$17.73K).
- Higher discounts were associated with lower profitability.
- Consumer generated the highest total profit ($134.12K).
- Home Office had the highest profit margin (14.03%).

## SQL Skills Demonstrated

- Filtering and sorting
- Aggregations and grouping
- CASE WHEN statements
- HAVING and DISTINCT
- Date-based analysis
- Subqueries
- Customer and order-level aggregation
- Profit margin calculations

## Project Structure

```text
sales-performance-analysis/
├── README.md
├── sql/
│   └── sales_analysis.sql
├── data/
└── dashboard/
    └── dashboard_screenshots/
```

## Business Recommendations

- Review high-discount transactions.
- Investigate loss-making products.
- Improve Furniture profitability.
- Monitor customers generating repeated losses.
- Explore opportunities in the Home Office segment.

## Limitations

The relationship between discounts and profitability does not prove causation. Shipping processing time measures the interval between order date and ship date, not final delivery time.

## Project Status

SQL analysis completed. Power BI dashboard and documentation in progress.