CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100)
);

-- Now proceed with the insertions
INSERT INTO employee (id, name, position)
SELECT 1, 'John Doe', 'Manager'
WHERE NOT EXISTS (SELECT 1 FROM employee WHERE id = 1);

INSERT INTO employee (id, name, position)
SELECT 2, 'Jane Smith', 'Developer'
WHERE NOT EXISTS (SELECT 1 FROM employee WHERE id = 2);
