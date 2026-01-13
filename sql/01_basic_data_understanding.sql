-- =====================================================
-- 01. BASIC DATA UNDERSTANDING
-- Purpose: Understand dataset scale and structure
-- =====================================================


-- 01.1 Total number of transactions
SELECT COUNT(*) AS total_transactions FROM walmart;


-- 01.2 View sample records
SELECT * FROM walmart LIMIT 5;


-- 01.3 Unique branches, cities, and categories
SELECT COUNT(DISTINCT branch) AS total_branches,
       COUNT(DISTINCT city) AS total_cities,
       COUNT(DISTINCT category) AS total_categories
FROM walmart;


-- 01.4 Maximum and minimum quantity sold
SELECT MAX(quantity) AS max_quantity, MIN(quantity) AS min_quantity FROM walmart;