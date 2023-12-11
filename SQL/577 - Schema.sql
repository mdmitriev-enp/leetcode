CREATE TABLE IF NOT EXISTS Employee (empId int, name varchar(255), supervisor int, salary int);
CREATE TABLE IF NOT EXISTS Bonus (empId int, bonus int);

INSERT INTO Employee (empId, name, supervisor, salary)
VALUES
	('3', 'Brad', NULL, '4000'),
	('1', 'John', '3', '1000'),
	('2', 'Dan', '3', '2000'),
	('4', 'Thomas', '3', '4000');

INSERT INTO Bonus (empId, bonus)
VALUES
	('2', '500'),
	('4', '2000');