-- =====================================================
-- 02. CUSTOMER & PAYMENT INSIGHTS
-- Purpose: Analyze customer payment behavior
-- =====================================================


-- 02.1 Transactions and quantity by payment method
SELECT 
    payment_method,
    COUNT(*) AS num_transactions,
    SUM(quantity) AS total_quantity_sold
FROM walmart
GROUP BY payment_method
ORDER BY total_quantity_sold DESC;


-- 02.2 Most preferred payment method per branch
WITH payment_ranking AS (
    SELECT 
        branch,
        payment_method,
        COUNT(*) AS transaction_count,
        RANK() OVER (PARTITION BY branch ORDER BY COUNT(*) DESC) AS rank
    FROM walmart
    GROUP BY branch, payment_method
)
SELECT * FROM payment_ranking WHERE rank = 1;