/*
=========================================================
PROJECT: Sales Performance Analysis
DATASET: Sample Superstore (2014-2017)
DATABASE: PostgreSQL

OBJECTIVE:
Analyze sales performance, profitability,
customer behavior, product performance,
discount impact and regional trends.
=========================================================
*/


-- 1. DATASET OVERVIEW
-- Check total number of records

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT "Order ID") AS unique_orders,
    COUNT(DISTINCT "Customer ID") AS unique_customers,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM public.superstore;


-- 2. DATA QUALITY CHECK
-- Check missing values

SELECT
    COUNT(*) FILTER (WHERE "Order ID" IS NULL) AS missing_order_id,
    COUNT(*) FILTER (WHERE "Customer ID" IS NULL) AS missing_customer_id,
    COUNT(*) FILTER (WHERE "Sales" IS NULL) AS missing_sales,
    COUNT(*) FILTER (WHERE "Profit" IS NULL) AS missing_profit
FROM public.superstore;


-- Check duplicate rows across all columns

SELECT
    COUNT(*) - COUNT(DISTINCT to_jsonb(s)) AS duplicate_records
FROM public.superstore AS s;

-- 3. SALES AND PROFITABILITY BY CATEGORY

SELECT
    "Category",
    COUNT(*) AS total_items,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,
    ROUND(
        SUM("Profit") / NULLIF(SUM("Sales"), 0) * 100,
        2
    ) AS profit_margin_pct
FROM public.superstore
GROUP BY "Category"
ORDER BY total_sales DESC;

-- 4. SALES AND PROFIT BY REGION

SELECT
    "Region",
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,
    ROUND(
        SUM("Profit") / NULLIF(SUM("Sales"), 0) * 100,
        2
    ) AS profit_margin_pct
FROM public.superstore
GROUP BY "Region"
ORDER BY total_profit DESC;

-- 5. PRODUCT SUB-CATEGORY PERFORMANCE

SELECT
    "Category",
    "Sub-Category",
    COUNT(*) AS total_items,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM public.superstore
GROUP BY "Category", "Sub-Category"
ORDER BY total_profit DESC;

-- 6. TOP 10 MOST PROFITABLE PRODUCTS

SELECT
    "Product Name",
    SUM("Quantity") AS units_sold,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM public.superstore
GROUP BY "Product Name"
ORDER BY total_profit DESC
LIMIT 10;


-- 7. TOP 10 LEAST PROFITABLE PRODUCTS

SELECT
    "Product Name",
    SUM("Quantity") AS units_sold,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM public.superstore
GROUP BY "Product Name"
ORDER BY total_profit ASC
LIMIT 10;

-- 8. PROFITABILITY BY DISCOUNT LEVEL

SELECT
    CASE
        WHEN "Discount" = 0 THEN '0%'
        WHEN "Discount" <= 0.2 THEN '1-20%'
        WHEN "Discount" <= 0.4 THEN '21-40%'
        WHEN "Discount" <= 0.6 THEN '41-60%'
        ELSE '61-80%'
    END AS discount_group,

    COUNT(*) AS total_items,

    ROUND(AVG("Profit")::numeric, 2) AS avg_profit,

    ROUND(SUM("Sales")::numeric, 2) AS total_sales,

    ROUND(SUM("Profit")::numeric, 2) AS total_profit

FROM public.superstore
GROUP BY discount_group
ORDER BY MIN("Discount");

-- 9. DISCOUNT IMPACT BY CATEGORY

SELECT
    "Category",

    CASE
        WHEN "Discount" = 0 THEN '0%'
        WHEN "Discount" <= 0.2 THEN '1-20%'
        WHEN "Discount" <= 0.4 THEN '21-40%'
        WHEN "Discount" <= 0.6 THEN '41-60%'
        ELSE '61-80%'
    END AS discount_group,

    COUNT(*) AS total_items,

    ROUND(AVG("Profit")::numeric, 2) AS avg_profit,

    ROUND(SUM("Profit")::numeric, 2) AS total_profit

FROM public.superstore
GROUP BY "Category", discount_group
ORDER BY "Category", MIN("Discount");

-- 10. UNPROFITABLE TRANSACTIONS

SELECT
    COUNT(*) AS unprofitable_items,

    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM public.superstore),
        2
    ) AS unprofitable_percentage,

    ROUND(AVG("Discount")::numeric, 3) AS avg_discount,

    ROUND(SUM("Profit")::numeric, 2) AS total_loss

FROM public.superstore
WHERE "Profit" < 0;

-- 11. CUSTOMER PROFITABILITY

SELECT
    "Customer ID",
    "Customer Name",

    COUNT(DISTINCT "Order ID") AS total_orders,

    ROUND(SUM("Sales")::numeric, 2) AS total_sales,

    ROUND(SUM("Profit")::numeric, 2) AS total_profit,

    ROUND(AVG("Discount")::numeric, 3) AS avg_discount

FROM public.superstore
GROUP BY "Customer ID", "Customer Name"
ORDER BY total_profit DESC
LIMIT 10;

-- 12. ANNUAL SALES PERFORMANCE

SELECT
    "Year",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,

    ROUND(
        SUM("Profit") / NULLIF(SUM("Sales"), 0) * 100,
        2
    ) AS profit_margin_pct

FROM public.superstore
GROUP BY "Year"
ORDER BY "Year";

-- 13. MONTHLY SALES AND PROFIT TRENDS

SELECT
    "Year",
    "Month",

    ROUND(SUM("Sales")::numeric, 2) AS monthly_sales,

    ROUND(SUM("Profit")::numeric, 2) AS monthly_profit

FROM public.superstore
GROUP BY "Year", "Month"
ORDER BY "Year", "Month";

-- 14. SHIPPING MODE PERFORMANCE

SELECT
    "Ship Mode",

    COUNT(DISTINCT "Order ID") AS total_orders,

    ROUND(
        AVG(("Ship Date"::date - "Order Date"::date)::numeric),
        2
    ) AS avg_processing_days,

    ROUND(SUM("Sales")::numeric, 2) AS total_sales,

    ROUND(SUM("Profit")::numeric, 2) AS total_profit

FROM public.superstore
GROUP BY "Ship Mode"
ORDER BY avg_processing_days;

-- 15. CUSTOMER SEGMENT PERFORMANCE

SELECT
    "Segment",

    COUNT(DISTINCT "Customer ID") AS total_customers,

    COUNT(DISTINCT "Order ID") AS total_orders,

    ROUND(SUM("Sales")::numeric, 2) AS total_sales,

    ROUND(SUM("Profit")::numeric, 2) AS total_profit,

    ROUND(
        SUM("Profit") / NULLIF(SUM("Sales"), 0) * 100,
        2
    ) AS profit_margin_pct

FROM public.superstore
GROUP BY "Segment"
ORDER BY total_profit DESC;

-- 16. CATEGORY PERFORMANCE BY REGION

SELECT
    "Region",
    "Category",

    COUNT(*) AS total_items,

    ROUND(SUM("Sales")::numeric, 2) AS total_sales,

    ROUND(SUM("Profit")::numeric, 2) AS total_profit

FROM public.superstore
GROUP BY "Region", "Category"
ORDER BY "Region", total_profit DESC;

-- 17. CATEGORY PROFITABILITY ANALYSIS USING CTE

WITH category_metrics AS (
    SELECT
        "Category",
        SUM("Sales") AS total_sales,
        SUM("Profit") AS total_profit
    FROM public.superstore
    GROUP BY "Category"
)

SELECT
    "Category",
    ROUND(total_sales::numeric, 2) AS total_sales,
    ROUND(total_profit::numeric, 2) AS total_profit,
    ROUND(
        (total_profit / NULLIF(total_sales, 0) * 100)::numeric,
        2
    ) AS profit_margin_pct
FROM category_metrics
ORDER BY total_profit DESC;

