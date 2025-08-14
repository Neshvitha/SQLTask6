USE task6;
SELECT name,
       (SELECT COUNT(*) 
        FROM orders 
        WHERE orders.customer_id = customers.customer_id) AS total_orders
FROM customers;