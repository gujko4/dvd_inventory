CREATE TABLE inventory( inventory_id INT AUTO_INCREMENT PRIMARY KEY,
								movie_id INT,
								available_copies INT,
								FOREIGN KEY (movie_id) REFERENCES movies_movie(movie_id));
								
								DESCRIBE inventory;
								
								INSERT INTO inventory (inventory_id, movie_id, available_copies) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 3, 4),
(4, 4, 2),
(5, 5, 6),
(6, 6, 7),
(7, 7, 3),
(8, 8, 5),
(9, 9, 4),
(10, 10, 6);

SELECT * FROM customers_movie WHERE rental_date BETWEEN '2024-01-01' AND '2024-01-31';





SELECT customers_movie.first_name, customers_movie.last_name, movies_movie.title, rental.rental_date
FROM rental
INNER JOIN customers_movie ON rental.customer_id = customers_movie.customer_id
INNER JOIN movies_movie ON rental.movie_id = movies_movie.movie_id; #customers with DVD names and rental dates

SELECT rental.rental_id, rental.movie_id
FROM rental

SELECT m.title, COUNT(r.rental_id) AS rental_count
FROM movies_movie m
JOIN rental r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY rental_count DESC; #num of copies of each DVD







