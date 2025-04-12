# Bookstore Database Project

## Course: Database Design & Programming with SQL  
*Assignment Type:* Group Work  
*Submission Date:* 13/04/2025

## Overview

This project involved creating a MySQL database for a fictional bookstore. We designed and implemented tables to store data about books, authors, customers, orders, and shipping. The main goal was to understand relational database concepts and practice SQL skills in a real-world context.

## Project Goals

- Design a relational database schema for a bookstore.
- Implement the database in MySQL with appropriate data types and relationships.
- Create user roles with limited access.
- Run SQL queries to retrieve and analyze data.

## Tables Implemented

- book  
- author  
- book_author  
- book_language  
- publisher  
- customer  
- address  
- customer_address  
- address_status  
- country  
- cust_order  
- order_line  
- shipping_method  
- order_history  
- order_status

![Entity Relationship Diagram](images/erd.png)



## Sample SQL Queries

```sql
-- Books and their authors
SELECT b.title, a.name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- Total orders per customer
SELECT customer_id, COUNT(*) AS total_orders
FROM cust_order
GROUP BY customer_id;


CONTRIBUTORS:
Chalonreay Kahindi 
Eileen Esendi
Lucy Kiage 

Group: Lec
