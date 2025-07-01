# Task_06_online-sales-data-analysis
## Online Sales Data Analysis

This project contains SQL scripts to analyze an online sales dataset. The database is designed to store and process sales transactions, enabling revenue and order volume analysis over time.

## 📂 Project Structure

- `online_sales_db`: MySQL database containing the sales data
- SQL scripts for:
  - Preprocessing data checks
  - Monthly revenue and order volume analysis
  - Filtering for the year 2024

## 🗂 Data Columns

The table `online sales data` includes the following columns:

- Transaction ID
- Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

## ✅ Preprocessing Checks

- **Check for missing dates**
- **Check for negative or zero total revenue**
- **Check for duplicate Transaction IDs**

## 📊 Sales Trend Analysis

- Monthly revenue and order volume across the entire dataset
- Year-specific analysis for 2024

## 🚀 How to Run

1. Import your data into MySQL:
    ```sql
    CREATE DATABASE IF NOT EXISTS online_sales_db;
    USE online_sales_db;
    ```
    *(then load the CSV or data dump)*

2. Run the included SQL scripts to validate and analyze the data:
    - Preprocessing checks
    - Trend analysis queries

## 📌 Requirements

- MySQL (or MariaDB)
- MySQL Workbench or any compatible SQL client

