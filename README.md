# 💸 Online Bank Transactions Analysis (GCash/Maya Style) 🇵🇭

This project simulates and analyzes 10,000 synthetic transactions from a fictional mobile wallet similar to **GCash** or **Maya**, focused on the **Philippine market**. The goal is to uncover valuable insights for stakeholders in product, marketing, and operations.

---

## 📁 Dataset Overview

- **Filename:** `online_bank_transactions_ph.csv`
- **Rows:** 10,000 transactions
- **Fields:**
  - `transaction_id`: Unique transaction ID
  - `user_id`: Unique user ID
  - `transaction_type`: (e.g., Send Money, Pay Bills)
  - `channel`: App or Partner Outlet
  - `device_type`: Android, iOS, or Web
  - `amount`: Transaction amount in PHP
  - `transaction_status`: Success, Failed, or Pending
  - `timestamp`: Transaction date & time
  - `location`: Philippine city (e.g., Cebu City, Davao, Makati)

---

## 🔍 Business Questions

1. **What are the most common transaction types?**
2. **How do transaction volumes and values trend monthly?**
3. **Which channels and device types are most used?**
4. **What’s the success rate of transactions?**
5. **Which cities are most active in transactions?**

---

## 💡 Sample Insights (from `queries.sql`)

### 🔹 Most Popular Transaction Types
```sql
SELECT transaction_type, COUNT(*) AS count
FROM online_bank_transactions
GROUP BY transaction_type
ORDER BY count DESC;
