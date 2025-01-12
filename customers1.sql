CREATE TABLE customers_movie (customer_id INT AUTO_INCREMENT PRIMARY KEY,
				 first_name VARCHAR(50),
				  last_name VARCHAR(50),
				  email VARCHAR(120),
				  membership_date DATE);
				  
				  INSERT INTO customers_movie (customer_id, first_name, last_name, email, membership_date) VALUES
(1, 'Alice', 'Smith', 'alice.smith@email.com', '2022-01-15'),
(2, 'Bob', 'Johnson', 'bob.johnson@email.com', '2022-02-20'),
(3, 'Catherine', 'Lee', 'catherine.lee@email.com', '2022-03-10'),
(4, 'David', 'Martinez', 'david.martinez@email.com', '2022-04-05'),
(5, 'Eva', 'Garcia', 'eva.garcia@email.com', '2022-05-12'),
(6, 'Frank', 'Brown', 'frank.brown@email.com', '2022-06-18'),
(7, 'Grace', 'Wilson', 'grace.wilson@email.com', '2022-07-22'),
(8, 'Henry', 'Taylor', 'henry.taylor@email.com', '2022-08-30'),
(9, 'Isabella', 'Anderson', 'isabella.anderson@email.com', '2022-09-15'),
(10, 'Jack', 'Thomas', 'jack.thomas@email.com', '2022-10-25');

SELECT * FROM customers_movie;
