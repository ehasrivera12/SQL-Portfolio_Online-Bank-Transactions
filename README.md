# 💸 Online Bank Transactions Analysis (Seabank, GCash & Maya Style) 🇵🇭

This SQL portfolio project analyzes 10,000+ transactions from Seabank, GCash, and Maya-style online banking transactions, using realistic data from the Philippines. The goal is to showcase SQL skills, perform business analysis, and provide actionable insights to improve services.

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
  - `location`: Philippine cities (e.g., Cebu City, Davao, Makati)

## 🔍 Business Questions, Insights & Recommendations

## 1. What are the most common transaction types?
   
🧠 Insight:
We can identify which services users engage with most (e.g., sending money, paying bills).

SQL Query:
We analyze the most common transaction types and their success/failure rates.

💡 Recommendations:

If "Cash Out" fails a lot: Work with partners to ensure they always have enough cash available.

If "Pay Bills" fails frequently: Check API connections to billers or add retry mechanisms.

Proactive Measures: Implement alerts to prevent failures or validate info before transactions go through.

## 2. How do transaction volumes and values trend monthly?
🧠 Insight:
Understanding peak transaction times and values helps predict demand and plan resources.

Based on the analysis, the following recommendations are proposed:

* **For E-wallets:** Invest in partnerships with popular e-wallet providers and optimize the mobile banking app for seamless integration.
* **For Bank Transfers:** Streamline the bank transfer process within the online platform, potentially offering pre-filled beneficiary details for frequent transactions.
* **For Direct Debit:** Ensure clear and user-friendly setup and management of direct debit mandates within the user interface.
* **Consider User Education:** Develop targeted educational campaigns highlighting the benefits and ease of use of different payment channels for specific user segments.


## 3. Which channels and devices are most used?

🧠 Insight:
Helps prioritize platform improvements and marketing strategies.

SQL Query:
Analyzes which channels (app, web, partner outlets) and devices (Android, iOS) users prefer.

💡 Recommendations:

If Android is the most-used device: Focus on optimizing the app for older Android models.

If partner outlets are popular: Ensure a good partner network with adequate cash availability.

If web usage is low: Run targeted campaigns to increase usage or improve the web experience.

## 4. What’s the success vs. failure rate of transactions?

🧠 Insight:
Indicates how well the platform is performing in terms of transaction completion.

SQL Query:
Examines the success/failure rates and helps identify the root cause of failures.

💡 Recommendations:

High failure rates: Investigate reasons like downtime or incorrect data, and set up real-time alerts for issues.

Improve transaction flow: Add pre-checks or retry mechanisms to ensure smoother transactions.

## 5. Which cities are most active in transactions?
🧠 Insight:
Helps determine where to focus marketing and service improvements.

SQL Query:
Identifies the top cities with the highest number of transactions.

💡 Recommendations:

In high-activity cities: Focus marketing and add more partner outlets for cash-in/out services.

In cities with a drop in transactions: Investigate if service issues or outages are affecting users.

## 📊 Technologies Used
SQL: MySQL, CTEs (Common Table Expressions)

Data: Simulated data with 10,000 rows based on Seabank, GCash, and Maya, (I have used ChatGPT to aid me in generating these data samples for my analysis)

Tools: MySQL Workbench, Excel

