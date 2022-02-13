DELETE FROM customers AS c
WHERE c.id NOT IN (SELECT customer_id FROM orders);