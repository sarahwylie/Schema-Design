--CREATE TABLE person (
-- 	id int NOT NULL PRIMARY KEY,
-- 	firstname varchar(30),
--     lastname varchar(30),
--     age int,
-- 	location_id int FOREIGN KEY REFERENCES location(id)
-- )
--CREATE TABLE location (
-- 	id int NOT NULL PRIMARY KEY,
-- 	city varchar(30),
--     state varchar(30),
--     country varchar(30),
-- )
--CREATE TABLE interest (
-- 	id int NOT NULL PRIMARY KEY,
-- 	title varchar(30)
-- )
--CREATE TABLE person_interest (
-- person_id int,
-- interest_id int
--)
--INSERT INTO location (city, state, country) VALUES
-- ('Nasvhille', 'Tennessee', 'United States'),
-- ('Memphis', 'Tennessee', 'United States'),
-- ('Phoenix', 'Arizona', 'United States'),
-- ('Denver', 'Colorado', 'United States');
-- INSERT INTO person (firstname, lastname, age, location_id) VALUES
-- 	('Chickie', 'Ourtic', '21', '1'),
-- 	('Hilton', 'O''Hanley', '37', '1'),
-- 	('Barbe', 'Purver', '50', '3'),
-- 	('Reeta', 'Sammons', '34', '2'),
-- 	('Abbott', 'Fisbburne', '49', '1'),
-- 	('Winnie', 'Whines', '19', '4'),
-- 	('Samantha', 'Leese', '35', '2'),
-- 	('Edouard', 'Lorimer', '29', '1'),
-- 	('Mattheus', 'Shaplin', '27', '3'),
-- 	('Donnell', 'Corney', '25', '3'),
-- 	('Wallis', 'Kauschke', '28', '3'),
-- 	('Melva', 'Lanham', '20', '2'),
-- 	('Amelina', 'McNirlan', '22', '4'),
-- 	('Courtney', 'Holley', '22', '1'),
-- 	('Sigismond', 'Vala', '21', '4'),
-- 	('Jacquelynn', 'Halfacre', '24', '2'),
-- 	('Alanna', 'Spino', '25', '3'),
-- 	('Isa', 'Slight', '32', '1'),
-- 	('Kakalina', 'Renne', '26', '3');
-- INSERT INTO interest (title) VALUES
--	('Programming'),
--	('Gaming'),
--	('Computers'),
--	('Music'),
--	('Movies'),
--	('Cooking'),
--	('Sports');
-- INSERT INTO person_interest (person_id, interest_id) VALUES
-- 	('1', '1'),
-- 	('1', '2'),
-- 	('1', '6'),
-- 	('2', '1'),
-- 	('2', '7'),
-- 	('2', '4');
-- 	('3', '1'),
-- 	('3', '3'),
-- 	('3', '4'),
-- 	('4', '1'),
-- 	('4', '2'),
-- 	('4', '7'),
-- 	('5', '6'),
-- 	('5', '3'),
-- 	('5', '4'),
-- 	('5', '6'),
-- 	('5', '3'),
-- 	('5', '4'),
-- 	('6', '2'),
-- 	('6', '7'),
-- 	('7', '1');
-- 	('11', '1'),
-- 	('11', '2'),
-- 	('11', '5'),
-- 	('12', '1'),
-- 	('12', '4'),
-- 	('12', '5'),
-- 	('13', '2'),
-- 	('13', '3'),
-- 	('13', '7'),
-- 	('14', '2');
-- 	('14', '4'),
-- 	('14', '6'),
-- 	('15', '1'),
-- 	('15', '5'),
-- 	('15', '7'),
-- 	('16', '2'),
-- 	('16', '3'),
-- 	('16', '4'),
-- 	('17', '1'),
-- 	('17', '3'),
-- 	('17', '5'),
-- 	('17', '7');
-- 	('18', '2'),
-- 	('18', '4'),
-- 	('18', '6'),
-- 	('19', '1'),
-- 	('19', '2'),
-- 	('19', '3'),
-- 	('19', '4'),
-- 	('19', '5'),
-- 	('19', '6'),
-- 	('19', '7');
-- SELECT * FROM person_interest; 
-- SELECT * FROM person;
-- SELECT * FROM location;
-- SELECT * FROM interest; 
-- UPDATE person SET age = CASE id 
-- 	WHEN 1 THEN 22
-- 	WHEN 4 THEN 35
-- 	WHEN 5 THEN 50
-- 	WHEN 6 THEN 20
-- 	WHEN 8 THEN 30
-- 	WHEN 12 THEN 21
-- 	WHEN 14 THEN 23
-- 	WHEN 18 THEN 33 
-- 	ELSE age
-- 	END
-- 	WHERE id in (1, 4, 5, 6, 8, 12, 14, 18);

-- DELETE FROM person_interest AS pi WHERE person_id = 2;
-- DELETE FROM person WHERE id = '2';

-- DELETE FROM person_interest AS pi WHERE person_id = 17;
-- DELETE FROM person WHERE id = '17';

-- SELECT firstname, lastname FROM person;

-- SELECT p.firstname, p.lastname, l.city, l.state
-- FROM person AS p
-- LEFT JOIN location AS l
-- ON p.location_id=l.id;

-- SELECT l.city, COUNT(p.location_id)
-- FROM person AS p INNER JOIN location AS l
-- ON l.id=p.location_id
-- GROUP BY l.city;

-- SELECT i.title, COUNT(pi.interest_id)
-- FROM person_interest AS pi INNER JOIN interest AS i
-- ON i.id=pi.interest_id
-- GROUP BY i.title;

-- SELECT p.firstname, p.lastname, l.city, l.state, i.title
-- FROM person AS p
-- LEFT JOIN location AS l
-- ON p.location_id=l.id
-- LEFT JOIN person_interest AS pi
-- ON p.id=pi.person_id
-- LEFT JOIN interest AS i
-- ON i.id=pi.interest_id
-- WHERE p.location_id='1' AND pi.interest_id='1';

SELECT
  CASE 
    WHEN age BETWEEN 20 AND 30 then '20-30'
    WHEN age BETWEEN 30 AND 40 then '31-40'
    WHEN age BETWEEN 40 AND 50 then '41-50'
    ELSE 'other' END AS Range,
	COUNT(*) AS Count
FROM person
GROUP BY Range;
