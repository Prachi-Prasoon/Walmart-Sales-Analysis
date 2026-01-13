-- =====================================================
-- 03. PRODUCT CATEGORY & PROFIT ANALYSIS
-- Purpose: Identify revenue and profitability drivers
-- =====================================================


-- 03.1 Revenue and profit by category
SELECT 
    category,
    SUM(total) AS total_revenue,
    SUM(total * profit_margin) AS total_profit
FROM walmart
GROUP BY category
ORDER BY total_profit DESC;


-- 03.2 Rating analysis by city and category
SELECT 
    city,
    category,
    AVG(rating) AS avg_rating,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating
FROM walmart
GROUP BY city, category
ORDER BY avg_rating DESC;


-- 03.3 Highest-rated category per branch
WITH category_rating AS (
    SELECT 
        branch,
        category,
        AVG(rating) AS avg_rating,
        RANK() OVER (PARTITION BY branch ORDER BY AVG(rating) DESC) AS rank
    FROM walmart
    GROUP BY branch, category
)
SELECT * FROM category_rating WHERE rank = 1;


-- 03.4 Category share in total revenue
SELECT 
    category,
    ROUND((SUM(total) * 100.0 / (SELECT SUM(total) FROM walmart))::numeric, 2) AS category_percent
FROM walmart
GROUP BY category
ORDER BY category_percent DESC;