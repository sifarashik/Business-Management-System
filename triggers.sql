-- ==========================================
-- TRIGGER: Order Audit Logging System
-- ==========================================

-- 1. Create audit table
CREATE TABLE order_audit (
    audit_id SERIAL PRIMARY KEY,
    order_id INT,
    customer_id INT,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 2. Create trigger function
CREATE OR REPLACE FUNCTION log_order_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO order_audit(order_id, customer_id)
    VALUES (NEW.order_id, NEW.customer_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- 3. Create trigger
CREATE TRIGGER order_insert_trigger
AFTER INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION log_order_insert();