-- 1. What are the most common transaction types?

WITH transaction_summary AS (
    SELECT 
        transaction_type,
        COUNT(*) AS total_transactions,
        SUM(CASE WHEN transaction_status = 'Failed' THEN 1 ELSE 0 END) AS failed_transactions
    FROM transactions
    GROUP BY transaction_type
)
SELECT 
    transaction_type,
    total_transactions,
    failed_transactions,
    ROUND((failed_transactions / total_transactions) * 100, 2) AS failure_rate
FROM transaction_summary
ORDER BY total_transactions DESC;

-- Insight:
-- Shows which services users rely on the most (e.g., Send Money, Pay Bills, etc.)

-- Recommendation:
-- Prioritize "Cash Out" and "Pay Bills" if they show high failure rates
-- Improve partner network reliability and payment gateway uptime
-- Improve partner network reliability and payment gateway uptime
-- Add smart alerts or pre-checks before users finish a transaction.