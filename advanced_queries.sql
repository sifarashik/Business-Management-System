-- ========================================
-- ADVANCED QUERIES: Business Analytics
-- ========================================


-- 1. INNER JOIN: List all customer orders with product details
SELECT 
    c.name AS customer_name,
    p.product_name,
    o.quantity,
    o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;



-- 2. LEFT JOIN: Show all customers, even if they haven't placed orders
SELECT 
    c.name,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;



-- 3. GROUP BY: Total quantity ordered per product
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;



-- 4. HAVING: Products sold more than 1 unit
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(o.quantity) > 1;



-- 5. SUBQUERY: Customers who placed orders above average quantity
SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE quantity > (
        SELECT AVG(quantity) FROM orders
    )
);



-- 6. UNION: Combine customer names and product names into one list
SELECT name AS entity_name, 'Customer' AS type
FROM customers

UNION

SELECT product_name AS entity_name, 'Product' AS type
FROM products;



-- 7. Derived table / Subquery in FROM: Order value per order
SELECT 
    order_id,
    customer_name,
    total_value
FROM (
    SELECT 
        o.order_id,
        c.name AS customer_name,
        (p.price * o.quantity) AS total_value
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN products p ON o.product_id = p.product_id
) AS order_summary;



-- 8. TOP SELLING PRODUCT (business insight query)
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;