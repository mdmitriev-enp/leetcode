CREATE TABLE IF NOT EXISTS cinema (id int, movie varchar(255), description varchar(255), rating NUMERIC(2, 1));

INSERT INTO cinema (id, movie, description, rating)
VALUES
	('1', 'War', 'great 3D', '8.9'),
	('2', 'Science', 'fiction', '8.5'),
	('3', 'irish', 'boring', '6.2'),
	('4', 'Ice song', 'Fantacy', '8.6'),
	('5', 'House card', 'Interesting', '9.1');