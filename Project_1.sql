-- corporate-staff-records-sql

 
CREATE DATABASE Corporate_Staff_Records;

USE Corporate_Staff_Records;


CREATE TABLE employee_profiles(
id INT auto_increment PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
gender ENUM ('MALE', 'FEMALE', 'OTHER'),
date_of_birth DATE,
salary FLOAT
);


INSERT INTO employee_profiles (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);


SELECT * FROM employee_profiles;

SELECT name , salary FROM employee_profiles;

SELECT * FROM employee_profiles WHERE gender = 'MALE';

SELECT * FROM employee_profiles WHERE salary > 60000;

SELECT * FROM employee_profiles WHERE salary < 55000;
            
SELECT * FROM employee_profiles WHERE gender = 'FEMALE' AND salary > 60000;

SELECT * FROM employee_profiles WHERE gender = 'MALE' AND salary > 65000;

SELECT * FROM employee_profiles WHERE date_of_birth > '1995-01-01';

SELECT * FROM employee_profiles WHERE date_of_birth < '1990-01-01';

SELECT * FROM employee_profiles WHERE gender = 'FEMALE' AND salary >70000;

SELECT COUNT(*) FROM employee_profiles;

SELECT COUNT(*) FROM employee_profiles WHERE gender = 'MALE' ;

SELECT COUNT(*) FROM employee_profiles WHERE gender = 'FEMALE';

SELECT COUNT(*) FROM employee_profiles WHERE salary >65000;

SELECT * FROM employee_profiles ORDER BY salary ASC;

SELECT * FROM employee_profiles ORDER BY salary DESC;

SELECT * FROM employee_profiles WHERE gender = 'FEMALE' ORDER BY date_of_birth ASC;

SELECT * FROM employee_profiles WHERE gender ='FEMALE' ORDER BY date_of_birth ASC;

UPDATE employee_profiles SET salary = 70000 WHERE id = 5;

UPDATE employee_profiles SET email = 'ishaan_shah@example.com' WHERE id = 10;

DELETE FROM employee_profiles WHERE id = 10;

SELECT * FROM employee_profiles WHERE name LIKE 'A%';

SELECT * FROM employee_profiles WHERE name LIKE 'R%';

SELECT * FROM employee_profiles WHERE email LIKE '%example.com%';

SELECT * FROM employee_profiles WHERE name LIKE '%a';

SELECT * FROM employee_profiles WHERE name LIKE '%I%';

SELECT * FROM employee_profiles WHERE gender = 'MALE' OR salary>70000;

SELECT * FROM employee_profiles WHERE salary<55000 OR salary>75000;

SELECT * FROM employee_profiles WHERE gender = 'FEMALE' OR date_of_birth<'1990-01-01';

SELECT * FROM employee_profiles WHERE name = 'Aarav' OR name= 'Raj';

SELECT * FROM employee_profiles WHERE salary IN (50000, 65000);

SELECT * FROM employee_profiles LIMIT 5;

SELECT * FROM employee_profiles LIMIT 10;

SELECT * FROM employee_profiles ORDER BY salary DESC LIMIT 3;

SELECT min(salary) FROM employee_profiles ;

SELECT min(date_of_birth) FROM employee_profiles;

SELECT min(salary) FROM employee_profiles WHERE gender = 'FEMALE';

SELECT max(salary) FROM employee_profiles ;
 
SELECT max(date_of_birth) FROM employee_profiles;

SELECT max(salary) FROM employee_profiles WHERE gender = 'MALE' ;