--Query 1 — Sales & Profit by Region

SELECT 
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) * 100.0 / SUM(sales))::numeric, 2) AS profit_margin_pct
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

--Query 2 — Sales & Profit by Category

SELECT 
    category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) * 100.0 / SUM(sales))::numeric, 2) AS profit_margin_pct
FROM orders
GROUP BY category
ORDER BY total_profit DESC;


--Query 3 — Monthly Sales Trend

SELECT 
    order_year,
    order_month,
    order_month_name,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM orders
GROUP BY order_year, order_month, order_month_name
ORDER BY order_year, order_month;

--Query 4 — Discount vs Profit

SELECT 
    ROUND(discount::numeric, 1) AS discount_level,
    COUNT(*) AS num_orders,
    ROUND(AVG(profit)::numeric, 2) AS avg_profit
FROM orders
GROUP BY discount_level
ORDER BY discount_level;

--Query 5 — Top 10 States

SELECT 
    state,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;

--Query 6 — Bottom 10 States

SELECT 
    state,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_profit ASC
LIMIT 10;




