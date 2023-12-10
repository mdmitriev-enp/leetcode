CREATE TYPE type_Y_N AS ENUM ('Y', 'N');

CREATE TABLE IF NOT EXISTS Products (
	product_id int,
	low_fats type_Y_N,
	recyclable type_Y_N
);

INSERT INTO Products (product_id, low_fats, recyclable)
VALUES	('0', 'Y', 'N'),
		('1', 'Y', 'Y'),
		('2', 'N', 'Y'),
		('3', 'Y', 'Y'),
		('4', 'N', 'N');
