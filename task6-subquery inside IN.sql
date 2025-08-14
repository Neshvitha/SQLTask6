USE task6;
SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders 
    WHERE amount > 2000
);