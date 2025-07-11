
CREATE TABLE employment_status (
  status_ID INT PRIMARY KEY AUTO_INCREMENT,
  status_name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE employees (
  employee_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  middle_name VARCHAR(100),
  age INT NOT NULL,
  status_ID INT,
  FOREIGN KEY (status_ID) REFERENCES employment_status (status_ID)
);


INSERT INTO employment_status (status_name)
VALUES ('employed'),
        ('on leave'),
        ('terminated'),
        ('retired'),
        ('contractor');
        
        
INSERT INTO employees (first_name, last_name, middle_name, age, status_ID)
VALUES ('Linda','Smith', NULL, 35, 1),
		  ('Bob', 'Johnson', 'V.', 41,  1),
		  ('Sarah', 'William ', NULL, 29, 2),
		  ('Tommy','Miller', 'Q.', 51, 1),
		  ('Mary','Phillips', 'N.',22, 3);


SELECT * FROM employees;

DESC employees;

SHOW CREATE TABLE employees;

SELECT
  e.first_name,
  e.last_name,
  s.status_name
FROM
  employees e
JOIN 
  employment_status s
ON
  e.status_ID = s.status_ID;

  
