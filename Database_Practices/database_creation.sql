CREATE DATABASE hospital_db;
SHOW DATABASES;
USE hospital_db;
SELECT DATABASE();
CREATE DATABASE hospital_practice;
SHOW DATABASES;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    blood_group VARCHAR(5),
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100),
    city VARCHAR(50),
    admission_date DATE,
    disease VARCHAR(100),
    room_number INT
);

DESC patients;
SHOW TABLES;

INSERT INTO patients (first_name, last_name, age, gender, blood_group,
    phone, email, city, admission_date, disease, room_number)
VALUES ('Arun', 'Kumar', 35, 'Male', 'O+',
    '9876543210', 'arun@gmail.com', 'Trivandrum',
    '2026-11-01', 'Fever', 101);
    
INSERT INTO patients (
    first_name, last_name, age, gender, blood_group,
    phone, email, city, admission_date, disease, room_number
)
VALUES
('Anand', 'Raj', 45, 'Male', 'A+',
 '9876543211', 'anand@gmail.com', 'Kochi',
 '2026-11-01', 'Diabetes', 102),

('Aparna', 'Nair', 22, 'Female', 'B+',
 '9876543212', 'aparna@gmail.com', 'Kozhikode',
 '2026-11-02', 'Fever', 103),

('Karan', 'Das', 55, 'Male', 'O+',
 '9876543213', 'karan@gmail.com', 'Thrissur',
 '2026-11-02', 'Heart Disease', 104),

('Meera', 'Menon', 30, 'Female', 'AB+',
 '9876543214', 'meera@gmail.com', 'Alappuzha',
 '2026-11-03', 'Asthma', 105),

('Arun', 'Raj', 18, 'Male', 'A-',
 '9876543215', 'arunraj@gmail.com', 'Kannur',
 '2026-11-03', 'Flu', 106),

('Varun', 'Mohan', 42, 'Male', 'B+',
 '9876543216', 'varun@gmail.com', 'Palakkad',
 '2026-11-04', 'Diabetes', 107),

('Sarah', 'Thomas', 27, 'Female', 'O-',
 '9876543217', 'sarah@gmail.com', 'Kochi',
 '2026-11-04', 'Kidney Disease', 108),

('Nikhil', 'Raj', 60, 'Male', 'AB-',
 '9876543218', 'nikhil@gmail.com', 'Trivandrum',
 '2026-11-05', 'Diabetes', 109),

('Diya', 'Paul', 15, 'Female', 'A+',
 '9876543219', NULL, 'Kottayam',
 '2026-11-05', 'Fever', 110);
 

 
SELECT * FROM patients;
SELECT first_name, last_name, age FROM patients;
SELECT first_name, last_name, disease FROM patients;
SELECT first_name, last_name, admission_date FROM patients;

SELECT * FROM patients WHERE age > 40;
SELECT * FROM patients WHERE gender = 'Female';
SELECT * FROM patients WHERE age <= 25;
SELECT * FROM patients WHERE disease = 'Fever';
SELECT * FROM patients WHERE age > 30 AND blood_group = 'O+';
SELECT * FROM patients WHERE disease = 'Fever' OR disease = 'Diabetes';
SELECT * FROM patients WHERE city != 'Trivandrum';
SELECT * FROM patients WHERE age BETWEEN 20 AND 50;

SELECT * FROM patients ORDER BY age ASC;
SELECT * FROM patients ORDER BY admission_date DESC;
SELECT * FROM patients ORDER BY age DESC LIMIT 3;
SELECT DISTINCT blood_group FROM patients;
SELECT * FROM patients WHERE first_name LIKE 'A%';
SELECT * FROM patients WHERE last_name LIKE '%n';
SELECT * FROM patients WHERE disease LIKE '%Di%';
SELECT * FROM patients WHERE age BETWEEN 25 AND 45;
SELECT * FROM patients WHERE blood_group IN ('A+', 'B+', 'O+');
SELECT * FROM patients WHERE email IS NULL;
SELECT * FROM patients WHERE email IS NOT NULL;

UPDATE patients SET disease = 'Viral Fever' WHERE patient_id = 1;
UPDATE patients SET room_number = 205 WHERE patient_id = 3;
UPDATE patients SET city = 'Kochi' WHERE disease = 'Diabetes';
DELETE FROM patients WHERE patient_id = 5;
DELETE FROM patients WHERE age < 18;