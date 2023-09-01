DROP DATABASE IF EXISTS employee_management;
CREATE DATABASE employee_management;

USE employee_management;

CREATE TABLE employees (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT
);


CREATE TABLE roles (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INT NOT NULL
);

CREATE TABLE departments (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL
);

INSERT INTO departments (name) VALUES 
('Engineering'),
('Finance'),
('Marketing'),
('Sales'),
('HR');

INSERT INTO roles (title, salary, department_id) VALUES 
('Software Engineer', 90000, 1),
('Senior Software Engineer', 120000, 1),
('Accountant', 60000, 2),
('Financial Analyst', 70000, 2),
('Marketing Associate', 55000, 3),
('Sales Representative', 50000, 4),
('HR Manager', 80000, 5);

INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES 
('John', 'Doe', 1, NULL),
('Jane', 'Doe', 2, 1),
('Emily', 'Smith', 3, 1),
('Robert', 'Johnson', 4, 1),
('Samantha', 'Williams', 5, 1),
('Michael', 'Brown', 6, 1),
('Sarah', 'Wilson', 7, 1),
('David', 'Lee', 1, 2),
('Sophia', 'Kim', 2, 2),
('William', 'Harris', 3, 2),
('Olivia', 'Lewis', 4, 2);
