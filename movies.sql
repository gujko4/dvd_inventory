CREATE TABLE movies_movie (movie_id INT AUTO_INCREMENT PRIMARY KEY,
				 title VARCHAR(50),
				  genre VARCHAR(50),
				  release_year YEAR,
				  rating_movie DECIMAL);
ALTER TABLE movies_movie MODIFY COLUMN rating_movie VARCHAR(250);

INSERT INTO movies_movie (movie_id, title, genre, release_year, rating_movie) VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 'R'),
(2, 'The Godfather', 'Crime', 1972, 'R'),
(3, 'The Dark Knight', 'Action', 2008, 'PG-13'),
(4, 'Pulp Fiction', 'Crime', 1994, 'R'),
(5, 'The Lord of the Rings: The Return of the King', 'Fantasy', 2003, 'PG-13'),
(6, 'Forrest Gump', 'Drama', 1994, 'PG-13'),
(7, 'Inception', 'Sci-Fi', 2010, 'PG-13'),
(8, 'Fight Club', 'Drama', 1999, 'R'),
(9, 'The Matrix', 'Sci-Fi', 1999, 'R'),
(10, 'The Silence of the Lambs', 'Thriller', 1991, 'R');

	SELECT m.movie_id, m.title, i.available_copies
	FROM movies_movie m
	JOIN movies_movie m ON i.available_copies = m.available_copies	
	
	
