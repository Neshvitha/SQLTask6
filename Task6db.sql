
USE task6;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers VALUES
(1, 'Alice', 'Hyderabad'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi');

INSERT INTO orders VALUES
(101, 1, 2500, '2025-08-01'),
(102, 1, 1800, '2025-08-05'),
(103, 2, 3000, '2025-08-02');