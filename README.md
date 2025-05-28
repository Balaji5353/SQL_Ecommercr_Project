# SQL_Ecommerce_Project By Balaji
# 📦 Ecommerce Analytics SQL Project

## 📖 Overview

This project provides a structured and comprehensive set of SQL queries for an ecommerce database. It is designed to extract actionable insights from core business entities such as customers, products, orders, and categories. The queries cover a range of business questions, from customer behavior analysis to product performance, ensuring stakeholders can make informed decisions using data-driven intelligence.

The underlying schema includes key tables:
- `customers`
- `orders`
- `order_items`
- `products`
- `categories`

## 🎯 Project Goals

- Enable rich customer segmentation and behavior analysis
- Provide insights into product and category-level performance
- Analyze sales trends and revenue generation
- Identify business opportunities through data anomalies and patterns
- Deliver a flexible SQL toolkit for common ecommerce use cases

## 📊 SQL Query Categories

### 🧑 Customer Insights

1. List all customers with their city and state  
2. Show each customer with the total number of orders placed  
3. Display customers who placed more than 2 orders  
4. Get each customer’s most recent order date  
5. List top 5 customers who spent the most money  
6. Find customers who signed up but never placed an order  

### 🛒 Order Insights

1. Display each order with the customer’s full name  
2. Show all orders placed in 2024 with customer names  
3. Find the total number of order items per order  
4. List all orders where the total quantity ordered was greater than 10  

### 📦 Product & Category Analysis

1. Show all products with their category names (including missing ones)  
2. Display each product with the total quantity sold  
3. Show each product with total revenue generated  
4. List products that have never been ordered  
5. Find the most frequently ordered product (by quantity)  
6. List total revenue generated for each product category  
7. Find customers who ordered the most expensive product  

### 💰 Revenue and Spending

1. List each customer with their total spending  
2. Show total revenue per product  
3. Display revenue by category  

### 🌍 Demographics

1. Display the number of customers in each city  

## 📝 Notes & Recommendations

- Ensure all tables are properly indexed, especially on foreign key columns, to improve query performance.
- Use views or stored procedures for frequent or critical analytics.
- Validate queries that may have logic errors (e.g., missing conditions in `WHERE` clauses).

---


