-- Find all books by a specific author
SELECT b.title, b.price, CONCAT(a.first_name, ' ', a.last_name) AS author
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.last_name = 'Plath';

-- Get a customer's order history
SELECT o.order_id, o.order_date, COUNT(ol.line_id) AS items, 
       SUM(ol.price * ol.quantity) AS total, os.status_value AS status
FROM cust_order o
JOIN order_line ol ON o.order_id = ol.order_id
JOIN order_history oh ON o.order_id = oh.order_id
JOIN order_status os ON oh.status_id = os.status_id
WHERE o.customer_id = 1
GROUP BY o.order_id, o.order_date, os.status_value;

-- Check inventory levels
SELECT b.title, b.stock_quantity, 
       CASE WHEN b.stock_quantity < 10 THEN 'Low Stock' ELSE 'In Stock' END AS status
FROM book b
ORDER BY b.stock_quantity ASC;

-- Get all pending orders
SELECT o.order_id, c.first_name, c.last_name, o.order_date, 
       COUNT(ol.line_id) AS items, SUM(ol.price * ol.quantity) AS total
FROM cust_order o
JOIN customer c ON o.customer_id = c.customer_id
JOIN order_line ol ON o.order_id = ol.order_id
JOIN order_history oh ON o.order_id = oh.order_id
WHERE oh.status_id = (SELECT status_id FROM order_status WHERE status_value = 'Pending' LIMIT 1)
GROUP BY o.order_id, c.first_name, c.last_name, o.order_date;