

CREATE DATABASE netflix_db;

USE netflix_db;


SELECT * FROM netflix_titles;

SELECT * FROM netflix_titles WHERE type = 'Movie';

SELECT * FROM netflix_titles WHERE type = 'TV Show';

SELECT * FROM netflix_titles WHERE release_year = 2020;

SELECT * FROM netflix_titles WHERE release_year = 2019;

SELECT * FROM netflix_titles WHERE rating = 'PG-13';

SELECT * FROM netflix_titles WHERE country = 'India';

SELECT * FROM netflix_titles WHERE country = 'United States';

SELECT * FROM netflix_titles WHERE title LIKE '%Love%';

SELECT * FROM netflix_titles WHERE title LIKE '%King%' ;

SELECT * FROM netflix_titles WHERE director IS NOT NULL;

SELECT * FROM netflix_titles WHERE cast IS NOT NULL;

SELECT * FROM netflix_titles WHERE release_year>2020;

SELECT * FROM netflix_titles WHERE release_year<2015;

SELECT * FROM netflix_titles LIMIT 10;

SELECT * FROM netflix_titles WHERE type = 'Movie' LIMIT 20;

SELECT duration FROM netflix_titles ;

SELECT * FROM netflix_titles WHERE rating = 'TV-MA';

SELECT * FROM netflix_titles WHERE country = 'Canada';

SELECT * FROM netflix_titles WHERE country = 'India' AND type = 'Movie';

SELECT * FROM netflix_titles WHERE country = 'India' AND type = 'TV Show';

SELECT * FROM netflix_titles WHERE title LIKE 'The%';

SELECT * FROM netflix_titles WHERE title LIKE 'A%';

SELECT * FROM netflix_titles WHERE director LIKE '%Rajiv%';

SELECT * FROM netflix_titles WHERE country = 'India' AND release_year = 2020;

SELECT * FROM netflix_titles WHERE rating = 'PG' OR rating ='PG-13';

SELECT * FROM netflix_titles WHERE release_year BETWEEN '2018' AND 2021;

SELECT * FROM netflix_titles WHERE country = 'United States' AND type = 'Movie' ;

SELECT * FROM netflix_titles WHERE country = 'United Kingdom' ;

SELECT * FROM netflix_titles WHERE description LIKE '%familY%';

SELECT * FROM netflix_titles WHERE description LIKE '%school%';

SELECT * FROM netflix_titles WHERE description LIKE '%love%';

SELECT * FROM netflix_titles WHERE description LIKE '%crime%';

SELECT * FROM netflix_titles ORDER BY release_year DESC;

SELECT * FROM netflix_titles ORDER BY release_year ASC;

SELECT * FROM netflix_titles ORDER BY title ASC;

SELECT * FROM netflix_titles ORDER BY release_year DESC LIMIT 5;

SELECT * FROM netflix_titles ORDER BY release_year ASC LIMIT 5;

SELECT * FROM netflix_titles WHERE rating = 'TV-14' ;

SELECT COUNT(*) FROM netflix_titles;

SELECT COUNT(*) FROM netflix_titles WHERE type = 'Movie';

SELECT COUNT(*) FROM netflix_titles WHERE type = 'TV Show';

SELECT COUNT(*) FROM netflix_titles WHERE director IS NOT NULL;

SELECT COUNT(*) FROM netflix_titles WHERE director IS NOT NULL AND director != ''; 

SELECT COUNT(*) FROM netflix_titles WHERE cast IS NOT NULL ;

SELECT COUNT(*) FROM netflix_titles WHERE cast IS NOT NULL AND cast != '' ;  

SELECT COUNT(*) FROM netflix_titles WHERE country = 'India';

SELECT COUNT(*) FROM netflix_titles WHERE country = 'United States' ;

SELECT MAX(release_year) FROM netflix_titles ;

SELECT MIN(release_year) FROM netflix_titles;

SELECT COUNT(*) FROM netflix_titles WHERE rating = 'PG-13';

SELECT COUNT(*) FROM netflix_titles WHERE rating = 'TV-MA';

SELECT COUNT(*) FROM netflix_titles WHERE release_year = 2020;

SELECT COUNT(*) FROM netflix_titles WHERE release_year<2010;

SELECT COUNT(*) FROM netflix_titles WHERE country = 'Canada' AND type = 'Movie';

SELECT COUNT(*) FROM netflix_titles WHERE country = 'India' AND rating = 'TV-MA';

SELECT * FROM netflix_titles WHERE description LIKE '%murder%';

SELECT * FROM netflix_titles WHERE description LIKE '%friendship%';

SELECT * FROM netflix_titles WHERE title LIKE '%Life%' AND release_year>2015;

UPDATE netflix_titles SET rating = 'PG-13' WHERE show_id = 's25';

UPDATE netflix_titles SET rating = 'TV-14' WHERE show_id = 's27';

UPDATE netflix_titles SET release_year = '2022' WHERE show_id = 's5';

UPDATE netflix_titles SET country = 'Türkiye' WHERE show_id = 's22';

UPDATE netflix_titles SET title = 'Bangkok Breaking Season 1' WHERE show_id ='s12';

DELETE FROM  netflix_titles WHERE show_id = 's25';

DELETE FROM netflix_titles WHERE release_year = 1993;

DELETE FROM netflix_titles WHERE country = 'India' AND type = 'Movie';

DELETE FROM netflix_titles WHERE rating = 'TV-PG';

SELECT * FROM netflix_titles WHERE country = 'United States' AND rating = 'PG-13';

SELECT * FROM netflix_titles WHERE release_year = '2021' AND type = 'TV Show';

SELECT * FROM netflix_titles WHERE rating = 'TV-MA' AND release_year = 2021;

SELECT * FROM netflix_titles WHERE country = 'India' OR country = 'Turkey';

SELECT * FROM netflix_titles WHERE rating = 'PG-13' OR rating = ' TV-PG';

SELECT * FROM netflix_titles WHERE show_id = 's25' OR show_id = 's27';

SELECT * FROM netflix_titles WHERE release_year = '1998' OR release_year = 1997;

SELECT * FROM netflix_titles WHERE title LIKE '%Love%' OR title LIKE '%Crime%';
