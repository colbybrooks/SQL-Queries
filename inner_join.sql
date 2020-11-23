# INNER JOIN

USE sql_store;

-- This example is to show the order information along with the customer information 
-- SELECT order_id, orders.customer_id, first_name, last_name -- Select which columns from the joined table to use
-- FROM orders o -- create a alias call orders o
-- JOIN customers c -- and from orders to join with customers
-- ON o.customer_id = c.customer_id  -- Join to show where customer_id is equal and orders by

-- EX: Join the order items and products
SELECT order_id, o.product_id, quantity, o.unit_price
FROM order_items o
JOIN products p
ON o.product_id = p.product_id