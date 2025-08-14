USE task6;
SELECT name
FROM customers
WHERE customer_id = (
    SELECT customer_id 
    FROM orders 
    ORDER BY amount DESC 
    LIMIT 1
);