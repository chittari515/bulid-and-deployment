CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JobTitle VARCHAR(50),
    Department VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);
desc employee;INSERT INTO employee VALUES(1, 'John', 'Doe', 'Manager', 'Sales', 'john.doe@example.com', '1234567890', '2020-01-01', '50000');
INSERT INTO employee VALUES(2, 'Jane', 'Smith', 'Assistant Manager', 'Marketing', 'jane.smith@example.com', '9876543210', '2020-02-01', 40000.00);
INSERT INTO student VALUES(3, 'Bob', 'Johnson', 'Sales Representative', 'Sales', 'bob.johnson@example.com', '5551234567', '2020-03-01', 35000.00);
INSERT INTO employee VALUES(4, 'Alice', 'Brown', 'Marketing Coordinator', 'Marketing', 'alice.brown@example.com', '9012345678', '2020-04-01', 30000.00);
INSERT INTO employee VALUES(5, 'Mike', 'Davis', 'IT Support Specialist', 'IT', 'mike.davis@example.com', '1112223333', '2020-05-01', 45000.00);
INSERT INTO employee VALUES(6, 'Emily', 'Chen', 'Financial Analyst', 'Finance', 'emily.chen@example.com', '4445556666', '2020-06-01', 55000.00);
INSERT INTO employee VALUES(7, 'David', 'Lee', 'HR Generalist', 'HR', 'david.lee@example.com', '7778889999', '2020-07-01', 38000.00);
INSERT INTO employee VALUES(8, 'Sophia', 'Patel', 'Customer Service Representative', 'Customer Service', 'sophia.patel@example.com', '3334445555', '2020-08-01', 28000.00);
INSERT INTO employee VALUES(9, 'Oliver', 'Kim', 'Operations Manager', 'Operations', 'oliver.kim@example.com', '6667778888', '2020-09-01', 48000.00);
INSERT INTO employee VALUES(10, 'Ava', 'Wong', 'Data Analyst', 'Data Analytics', 'ava.wong@example.com', '9990001111', '2020-10-01', 42000.00);
INSERT INTO employee VALUES(11, 'Isabella', 'Martin', 'Graphic Designer', 'Creative', 'isabella.martin@example.com', '2223334444', '2020-11-01', 32000.00);
INSERT INTO employee VALUES(12, 'Jackson', 'Hall', 'Accountant', 'Finance', 'jackson.hall@example.com', '8889990000', '2020-12-01', 40000.00);
INSERT INTO employee VALUES(13, 'Mia', 'Garcia', 'Recruiter', 'HR', 'mia.garcia@example.com', '5556667777', '2021-01-01', 35000.00);
INSERT INTO employee VALUES(14, 'Alexander', 'Taylor', 'Software Engineer', 'IT', 'alexander.taylor@example.com', '1112223333', '2021-02-01', 60000.00);
INSERT INTO employee VALUES(15, 'Charlotte', 'White', 'Administrative Assistant', 'Administration', 'charlotte.white@example.com', '4445556666', '2021-03-01', 30000.00);
INSERT INTO employee VALUES(16, 'Benjamin', 'Brooks', 'Network Administrator', 'IT', 'benjamin.brooks@example.com', '7778889999', '2021-04-01', 50000.00);
INSERT INTO employee VALUES(17, 'Abigail', 'Lewis', 'Marketing Manager', 'Marketing', 'abigail.lewis@example.com', '3334445555', '2021-05-01', 55000.00);
INSERT INTO employee VALUES(18, 'Caleb', 'Walker', 'Sales Manager', 'Sales', 'caleb.walker@example.com', '6667778888', '2021-06-01', 58000.00);
INSERT INTO employee VALUES(19, 'Harper', 'Scott', 'Customer Service Manager', 'Customer Service', 'harper.scott@example.com', '9990001111', '2021-07-01', 45000.00);
SELECT*FROM employee;
##  Aggregate Functions##
SELECT MIN(salary)
FROM employee;
SELECT MAX(`Salary`)
FROM employee;
SELECT MIN(salary) AS Smallest salary
FROM employee;
SELECT COUNT(EmployeeID)
FROM employee;
SELECT COUNT( FirstName)
FROM employee;
SELECT COUNT(`Salary`)
FROM employee
WHERE `Salary` > 10;
SELECT SUM(salary)
FROM employee;
SELECT SUM(Department)
FROM employee;
SELECT SUM(salary* 10)
FROM employee;
SELECT AVG(`Salary`)
FROM employee;
SELECT AVG(salary)
FROM employee
WHERE employeeID = 2;
##UPDATE Statement##
UPDATE employee
SET FIRSTName = 'Alfred Schmidt', salary= '3000'
WHERE employeeID = 1;
SELECT*FROM employee;
## select the how main people if wannt disple the names##
SELECT * FROM employee
LIMIT 3;
## ALTER TABLE ##
ALTER TABLE employee
ADD lastworking_date INT(25);
SELECT*from employee;
## delete the a paticular values##
DELETE FROM employee WHERE firstName='Alfreds Futterkiste';
## SQL BETWEEN Operator##
SELECT * FROM employee
WHERE salary BETWEEN 10 AND 5;
SELECT*FROM employee;

SELECT employee.employeeID, employee.firstName, employee.HireDate
FROM employee
INNER JOIN employee ON employee.employeeID=employee.`FirstName;

