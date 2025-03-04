CREATE DATABASE IF NOT EXISTS company_db;

USE company_db;

CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (name, position, salary) VALUES
('John Doe', 'Software Engineer', 80000),
    ('aafiya Mam', 'Software Engineer', 80000),
('Jane Smith', 'Project Manager', 90000);

