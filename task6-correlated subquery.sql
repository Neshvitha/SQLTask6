USE task6;
SELECT name
FROM customers c
WHERE EXISTS (
    SELECT 1 
    FROM orders o
    WHERE o.customer_id = c.customer_id
    AND o.amount > 2000
);