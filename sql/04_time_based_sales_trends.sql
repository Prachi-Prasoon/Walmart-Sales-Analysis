-- =====================================================
-- 04. TIME-BASED SALES TRENDS
-- Purpose: Analyze demand patterns over time
-- =====================================================


-- 04.1 Sales by weekday
SELECT 
    weekday,
    COUNT(*) AS num_transactions,
    SUM(total) AS revenue
FROM walmart
GROUP BY weekday
ORDER BY revenue DESC;


-- 04.2 Sales by hour
SELECT 
    hour,
    COUNT(*) AS num_transactions,
    SUM(total) AS revenue
FROM walmart
GROUP BY hour
ORDER BY hour;


-- 04.3 Sales by shift
SELECT
    branch,
    shift,
    COUNT(*) AS num_transactions
FROM walmart
GROUP BY branch, shift
ORDER BY branch, num_transactions DESC;


-- 04.4 Month-over-month revenue trend
SELECT 
    year,
    month,
    SUM(total) AS revenue
FROM walmart
GROUP BY year, month
ORDER BY year, month;