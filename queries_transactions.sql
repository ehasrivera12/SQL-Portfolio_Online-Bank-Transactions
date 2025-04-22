-- 1. Most Common Transaction Types

SELECT 
    transaction_type,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN transaction_status = 'Success' THEN 1 ELSE 0 END) AS success_count,
    SUM(CASE WHEN transaction_status = 'Failed' THEN 1 ELSE 0 END) AS failed_count,
    SUM(CASE WHEN transaction_status = 'Pending' THEN 1 ELSE 0 END) AS pending_count,
    ROUND(SUM(CASE WHEN transaction_status = 'Success' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS success_rate_percentage
FROM online_bank_transactions_ph
GROUP BY transaction_type
ORDER BY total_transactions DESC;


-- 2. Monthly Transaction Volume and Value Trends

SELECT 
    DATE_FORMAT(timestamp, '%Y-%m') AS month,
    COUNT(transaction_id) AS transaction_count,
    SUM(amount) AS total_transaction_value
FROM online_bank_transactions_ph
WHERE transaction_status = 'Success'
GROUP BY month
ORDER BY month ASC;

-- 3. Most Used Channels and Devices

SELECT 
    channel,
    device_type,
    COUNT(transaction_id) AS total_transactions
FROM online_bank_transactions_ph
WHERE transaction_status = 'Success'
GROUP BY channel, device_type
ORDER BY total_transactions DESC;

-- 4. Success vs. Failure Rate

SELECT 
    transaction_status,
    COUNT(transaction_id) AS status_count,
    ROUND(COUNT(transaction_id) / (SELECT COUNT(*) FROM online_bank_transactions_ph) * 100, 2) AS percentage
FROM online_bank_transactions_ph
GROUP BY transaction_status
ORDER BY status_count DESC;

-- 5. Top Cities by Transaction Activity

SELECT 
    location,
    COUNT(transaction_id) AS transaction_count
FROM online_bank_transactions_ph
WHERE transaction_status = 'Success'
GROUP BY location
ORDER BY transaction_count DESC
LIMIT 10;


