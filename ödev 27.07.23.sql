CREATE TABLE orders3(
	order_id INT,
	order_date DATE,
	total_amount REAL

SELECT order_id from orders3 WHERE total_amount=(SELECT MAX(total_amount) FROM orders3);  
	

CREATE TABLE employees2 (
	employee_id INT,
	employee_name VARCHAR(50),
	department_id INT,
	salary REAL
);

	
SELECT employee_id FROM employees2 WHERE salary=(SELECT MAX(salary) FROM employees2);
	
	
CREATE TABLE products4(
	product_id INT,
	product_name VARCHAR(100),
	category VARCHAR(200),
	price VARCHAR(10),
	stock_quantity INT
);
	
SELECT MIN(price) 
FROM products4 WHERE price=(SELECT product_name FROM products4 WHERE category=(SELECT category FROM products4))



CREATE TABLE constumers(
	costumer_id INT,
	costumer_name VARCHAR(50),
	city VARCHAR(50)
);


SELECT COUNT (costumer_name) FROM constumers WHERE city=(SELECT city FROM constumers)  
