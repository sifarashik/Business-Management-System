-- Total sales
SELECT SUM(price * quantity) AS total_sales
FROM orders
JOIN products USING(product_id);

-- Customer purchase history
SELECT c.name, p.product_name, o.quantity
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
JOIN products p ON p.product_id = o.product_id;