CREATE DATABASE IF NOT EXISTS company_db;

USE company_db;

CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO employee (id, name, position)
SELECT 1, 'John Doe', 'Manager'
WHERE NOT EXISTS (SELECT 1 FROM employee WHERE id = 1);

INSERT INTO employee (id, name, position)
SELECT 2, 'Jane Smith', 'Developer'
WHERE NOT EXISTS (SELECT 1 FROM employee WHERE id = 2);


