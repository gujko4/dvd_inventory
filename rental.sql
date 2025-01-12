CREATE TABLE rental(rental_id INT AUTO_INCREMENT PRIMARY KEY,
                   FOREIGN KEY (customer_id) REFERENCES customers_movie(customer_id),
                   FOREIGN KEY (movie_id) REFERENCES movies_movie(movie_id),
                   rental_date DATE,
                   return_date DATE); ## bad code
                  


CREATE TABLE rental (
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    movie_id INT,
    rental_date DATE,
    return_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers_movie(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies_movie(movie_id)
);

INSERT INTO rental (rental_id, customer_id, movie_id, rental_date, return_date) VALUES
(1, 3, 7, '2024-01-10', '2024-01-17'),
(2, 1, 9, '2024-01-15', '2024-01-22'),
(3, 5, 2, '2024-01-18', '2024-01-25'),
(4, 7, 4, '2024-01-20', '2024-01-27'),
(5, 10, 8, '2024-01-25', '2024-02-01'),
(6, 4, 1, '2024-02-02', '2024-02-09'),
(7, 8, 3, '2024-02-05', '2024-02-12'),
(8, 2, 6, '2024-02-08', '2024-02-15'),
(9, 6, 10, '2024-02-11', '2024-02-18'),
(10, 9, 5, '2024-02-20', '2024-02-27');

SELECT * FROM rental WHERE rental_date BETWEEN '2024-01-01' AND '2024-01-31';

SELECT c.first_name, c.last_name, m.title, r.rental_date
FROM customers_movie c
JOIN rental r ON c.customer_id = r.customer_id
JOIN movies_movie m ON r.movie_id = m.movie_id
WHERE m.genre = 'Sci-Fi';

SELECT c.first_name, c.last_name, r.rental_date
FROM customers_movie c
LEFT JOIN rental r ON c.customer_id = r.customer_id;

SELECT m.title, m.genre, r.rental_date
FROM rental r
RIGHT JOIN movies_movie m ON r.movie_id = m.movie_id;

SELECT m.title, m.genre
FROM rental r
RIGHT JOIN movies_movie m ON r.movie_id = m.movie_id
WHERE r.rental_id IS NULL;

SELECT m.genre, COUNT(r.rental_id) AS rental_count
FROM rental r
JOIN movies_movie m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY rental_count DESC;

SELECT r.rental_date, customer_id, first_name
FROM rental r
JOIN movies_movie m ON r.movie_id = m.movie_id
WHERE return_date > '2024-02-01';

SELECT m.movie_id, r.rental_date, f.first_name
FROM rental r
JOIN movies_movie m ON m.movie_id = f.first_name
JOIN 


