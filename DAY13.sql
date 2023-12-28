CREATE TABLE employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Level VARCHAR(20),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);
DROP TABLE employees;
INSERT INTO employees (ID, Name, Age, Level, Department, Salary) VALUES
(1, 'Alice', 30, 'Senior', 'Engineering', 90000.00),
(2, 'Bob', 22, 'Junior', 'Marketing', 50000.00),
(3, 'Charlie', 28, 'Middle', 'HR', 65000.00),
(4, 'David', 35, 'Senior', 'Engineering', 95000.00),
(5, 'Eva', 26, 'Middle', 'Sales', 60000.00),
(6, 'Frank', 29, 'Senior', 'Marketing', 80000.00),
(7, 'Grace', 32, 'Senior', 'HR', 85000.00),
(8, 'Helen', 24, 'Junior', 'Sales', 48000.00),
(9, 'Ian', 31, 'Middle', 'Engineering', 70000.00),
(10, 'Judy', 27, 'Junior', 'Marketing', 52000.00);


ALTER TABLE employees ADD Marriage VARCHAR(10);
ALTER TABLE employees ADD Qualification VARCHAR(50);
ALTER TABLE employees ADD Location VARCHAR(50);
ALTER TABLE employees ADD DepartmentID INT;
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (departmentID)
REFERENCES departments(departmentID);


UPDATE employees SET Marriage = 'Married', Qualification = 'PhD', Location = 'New York' WHERE ID = 1;
UPDATE employees SET Marriage = 'Single', Qualification = 'Bachelors', Location = 'San Francisco' WHERE ID = 2;
UPDATE employees SET Marriage = 'Married', Qualification = 'Masters', Location = 'Chicago' WHERE ID = 3;

INSERT INTO employees (ID, Name, Age, Level, Department, Salary, Marriage, Qualification, Location) VALUES
(11, 'Kyle', 30, 'Senior', 'IT', 92000.00, 'Married', 'Masters', 'New York'),
(12, 'Liam', 25, 'Junior', 'Sales', 48000.00, 'Single', 'Bachelors', 'Chicago'),
(13, 'Mia', 35, 'Middle', 'HR', 68000.00, 'Married', 'Masters', 'San Francisco'),
(14, 'Noah', 28, 'Senior', 'Engineering', 96000.00, 'Single', 'Masters', 'Boston'),
(15, 'Olivia', 24, 'Junior', 'Marketing', 51000.00, 'Single', 'Bachelors', 'Seattle'),
(16, 'Pam', 40, 'Middle', 'Sales', 63000.00, 'Married', 'Masters', 'Miami'),
(17, 'Quinn', 38, 'Senior', 'IT', 87000.00, 'Married', 'PhD', 'Austin'),
(18, 'Ryan', 27, 'Junior', 'HR', 47000.00, 'Single', 'Bachelors', 'Denver'),
(19, 'Sophia', 31, 'Middle', 'Engineering', 73000.00, 'Married', 'Masters', 'Atlanta'),
(20, 'Tyler', 29, 'Senior', 'Sales', 81000.00, 'Single', 'Masters', 'Dallas'),
(21, 'Uma', 33, 'Senior', 'Marketing', 85000.00, 'Married', 'Masters', 'Portland'),
(22, 'Victor', 23, 'Junior', 'IT', 45000.00, 'Single', 'Bachelors', 'Philadelphia'),
(23, 'Wendy', 37, 'Middle', 'HR', 71000.00, 'Married', 'Masters', 'San Diego'),
(24, 'Xavier', 26, 'Junior', 'Engineering', 54000.00, 'Single', 'Bachelors', 'Las Vegas'),
(25, 'Yara', 39, 'Senior', 'Sales', 89000.00, 'Married', 'PhD', 'Houston'),
(26, 'Zane', 41, 'Middle', 'Marketing', 77000.00, 'Married', 'Masters', 'Phoenix'),
(27, 'Amy', 32, 'Senior', 'IT', 93000.00, 'Single', 'Masters', 'Los Angeles'),
(28, 'Brian', 34, 'Junior', 'HR', 56000.00, 'Married', 'Bachelors', 'San Jose'),
(29, 'Cara', 36, 'Middle', 'Engineering', 70000.00, 'Single', 'Masters', 'New Orleans'),
(30, 'Duke', 42, 'Senior', 'Sales', 95000.00, 'Married', 'PhD', 'Washington D.C.');
UPDATE employees SET Marriage = 'Single', Qualification = 'PhD', Location = 'Seattle' WHERE ID = 4;
UPDATE employees SET Marriage = 'Single', Qualification = 'Masters', Location = 'Boston' WHERE ID = 5;
UPDATE employees SET Marriage = 'Married', Qualification = 'Masters', Location = 'Austin' WHERE ID = 6;
UPDATE employees SET Marriage = 'Single', Qualification = 'PhD', Location = 'Denver' WHERE ID = 7;
UPDATE employees SET Marriage = 'Married', Qualification = 'Bachelors', Location = 'Miami' WHERE ID = 8;
UPDATE employees SET Marriage = 'Single', Qualification = 'Masters', Location = 'Atlanta' WHERE ID = 9;
UPDATE employees SET Marriage = 'Married', Qualification = 'Bachelors', Location = 'Dallas' WHERE ID = 10;

INSERT INTO employees (ID, Name, Age, Level, Department, Salary, Marriage, Qualification, Location) VALUES
(31, 'Ellen', 28, 'Middle', 'HR', 66000.00, 'Single', 'Masters', 'Chicago'),
(32, 'Franklin', 37, 'Senior', 'Engineering', 98000.00, 'Married', 'PhD', 'Seattle'),
(33, 'Georgia', 24, 'Junior', 'Marketing', 49000.00, 'Single', 'Bachelors', 'New York'),
(34, 'Hank', 31, 'Middle', 'Sales', 69000.00, 'Married', 'Masters', 'San Francisco'),
(35, 'Isla', 35, 'Senior', 'IT', 91000.00, 'Single', 'Masters', 'Boston'),
(36, 'Jack', 23, 'Junior', 'HR', 46000.00, 'Single', 'Bachelors', 'Miami'),
(37, 'Katie', 39, 'Senior', 'Engineering', 87000.00, 'Married', 'PhD', 'Austin'),
(38, 'Leo', 26, 'Junior', 'Sales', 52000.00, 'Single', 'Bachelors', 'Denver'),
(39, 'Megan', 32, 'Middle', 'Marketing', 72000.00, 'Married', 'Masters', 'Atlanta'),
(40, 'Nathan', 29, 'Senior', 'IT', 84000.00, 'Single', 'Masters', 'Dallas'),
(41, 'Oliver', 33, 'Senior', 'HR', 88000.00, 'Married', 'Masters', 'Portland'),
(42, 'Piper', 27, 'Junior', 'Engineering', 53000.00, 'Single', 'Bachelors', 'Philadelphia'),
(43, 'Quincy', 36, 'Middle', 'Sales', 75000.00, 'Married', 'Masters', 'San Diego'),
(44, 'Rachel', 38, 'Senior', 'Marketing', 96000.00, 'Single', 'PhD', 'Las Vegas'),
(45, 'Sam', 40, 'Middle', 'IT', 78000.00, 'Married', 'Masters', 'Houston'),
(46, 'Tina', 42, 'Senior', 'HR', 99000.00, 'Married', 'PhD', 'Phoenix'),
(47, 'Umar', 25, 'Junior', 'Engineering', 51000.00, 'Single', 'Bachelors', 'Los Angeles'),
(48, 'Violet', 34, 'Middle', 'Sales', 67000.00, 'Married', 'Masters', 'San Jose'),
(49, 'Will', 30, 'Senior', 'Marketing', 90000.00, 'Single', 'Masters', 'New Orleans'),
(50, 'Xena', 22, 'Junior', 'IT', 45000.00, 'Single', 'Bachelors', 'Washington D.C.'),
(51, 'Yvonne', 41, 'Middle', 'HR', 77000.00, 'Married', 'Masters', 'Chicago'),
(52, 'Zack', 35, 'Senior', 'Engineering', 95000.00, 'Single', 'PhD', 'Seattle'),
(53, 'Amber', 29, 'Junior', 'Sales', 48000.00, 'Married', 'Bachelors', 'New York'),
(54, 'Brad', 33, 'Middle', 'Marketing', 71000.00, 'Single', 'Masters', 'San Francisco'),
(55, 'Claire', 26, 'Junior', 'IT', 50000.00, 'Single', 'Bachelors', 'Boston'),
(56, 'Derek', 38, 'Senior', 'HR', 86000.00, 'Married', 'PhD', 'Miami'),
(57, 'Elaine', 27, 'Junior', 'Engineering', 54000.00, 'Single', 'Bachelors', 'Austin'),
(58, 'Felix', 39, 'Middle', 'Sales', 73000.00, 'Married', 'Masters', 'Denver'),
(59, 'Gina', 42, 'Senior', 'Marketing', 98000.00, 'Single', 'PhD', 'Atlanta'),
(60, 'Howard', 24, 'Junior', 'IT', 47000.00, 'Single', 'PhD', 'Austin')


CREATE TABLE department_budgets (
    Department VARCHAR(50),
    Budget DECIMAL(10, 2)
);

INSERT INTO department_budgets (Department, Budget) VALUES
('Engineering', 300000.00),
('Marketing', 150000.00),
('HR', 120000.00),
('Sales', 100000.00);

SELECT * FROM employees
SELECT * FROM department_budgets

---a) Find the names of employees who earn more than the average salary in the 'Marketing' department.
SELECT Name
FROM employees
WHERE Department = 'Marketing' AND Salary > (SELECT AVG(Salary) FROM employees WHERE Department = 'Marketing');

---b) List all departments that have a higher budget than the total salary of their employees.
SELECT d.Department
FROM department_budgets d
WHERE d.Budget > (SELECT SUM(e.Salary) FROM employees e WHERE e.Department = d.Department);

---c) Identify employees who are the sole earners in their department.
SELECT Name, Department
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e.Department = e2.Department AND e.ID <> e2.ID
);

---d) Increase the salary by 15% for employees who earn less than the average salary of all employees in departments with more than 5 employees.
BEGIN TRANSACTION;
UPDATE employees
SET Salary = Salary * 1.15
WHERE Salary < (
    SELECT AVG(e.Salary)
    FROM employees e
    WHERE e.Department IN (
        SELECT Department
        FROM employees
        GROUP BY Department
        HAVING COUNT(*) > 5
    )
);
ROLLBACK TRANSACTION;


---a) Create a list combining employee names and department names, ensuring no duplicates.
SELECT Name FROM employees
UNION
SELECT Department FROM department_budgets;

---b) List all department names from department_budgets that are not used as names of employees.
SELECT Department FROM department_budgets
EXCEPT
SELECT Name FROM employees;

---c) Combine the names of 'Senior' employees with the departments from department_budgets, including duplicates.
SELECT Name FROM employees WHERE Level = 'Senior'
UNION ALL
SELECT Department AS Name FROM department_budgets;

---d) Create a report listing the departments that only appear in department_budgets and not among the employees, along with departments that have 'Senior' employees. 
SELECT department FROM department_budgets
EXCEPT
SELECT department FROM employees
UNION
SELECT DISTINCT department FROM employees WHERE level = 'Senior';

-- Sample creation of departments table
CREATE TABLE departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
DROP TABLE departments;
--
ALTER TABLE departments
ADD PRIMARY KEY (DepartmentID);

-- Sample data insertion
INSERT INTO departments (DepartmentID, DepartmentName) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'HR');
INSERT INTO departments (DepartmentID, DepartmentName) VALUES
(4, 'Sales');
INSERT INTO departments (DepartmentID, DepartmentName) VALUES
(5, 'IT');
-- INNER JOIN Query
SELECT e.Name, e.Salary, d.DepartmentName
FROM employees e
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID;

SELECT * FROM departments

DROP TABLE department_budgets;
CREATE TABLE department_budgets (
    DepartmentID INT,
    Budget DECIMAL(10, 2)
);
ALTER TABLE department_budgets
ADD CONSTRAINT fk_department_budgets
FOREIGN KEY (departmentID)
REFERENCES departments(departmentID);


BEGIN TRANSACTION;
UPDATE employees
SET DepartmentID = 
  CASE
    WHEN Department = 'Engineering' THEN 1
    WHEN Department = 'Marketing' THEN 2
    WHEN Department = 'HR' THEN 3
	WHEN Department = 'Sales' THEN 4
	WHEN Department = 'IT' THEN 5
    ELSE 0
  END
WHERE Department IN ('Engineering', 'Marketing', 'HR', 'Sales', 'IT'); COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
SELECT * FROM employees;
-- Sample data insertion for department_budgets
INSERT INTO department_budgets (DepartmentID, Budget) VALUES
(1, 500000.00),
(2, 250000.00),
(3, 150000.00);

SELECT * FROM department_budgets
---Scenario: Compare each employee's salary with their department's budget. Assume a department_budgets table with DepartmentID and Budget.
SELECT e.Name, e.Salary, d.DepartmentName, db.Budget
FROM employees e
JOIN departments d ON e.DepartmentID = d.DepartmentID
JOIN department_budgets db ON d.DepartmentID = db.DepartmentID;

---a) Join employees with department_budgets to find departments where the total salary exceeds the budget.
SELECT d.Department FROM department_budgets d
INNER JOIN employees e ON d.Department = e.Department
GROUP BY d.Department, d.Budget
HAVING SUM(e.Salary) > d.Budget;


SELECT e.Department, SUM(e.Salary) AS TotalSalary, d.Budget
FROM employees e
INNER JOIN department_budgets d ON e.Department = d.Department
GROUP BY e.Department, d.Budget
HAVING SUM(e.Salary) > d.Budget;

---b) List the names of employees and their department's budget if they are in 'Engineering'.
SELECT e.Name AS EmployeeName, d.Budget AS DepartmentBudget
FROM employees e
INNER JOIN department_budgets d ON e.Department = d.Department
WHERE e.Department = 'Engineering';

---c) Find the highest salary in each department.
SELECT Department, MAX(Salary) AS HighestSalary
FROM employees
GROUP BY Department;

SELECT e.Department, MAX(e.Salary) FROM employees e 
INNER JOIN department_budgets d ON e.Department = d.Department 
GROUP BY e.Department; ---better!

---d) Write a query to list the names of employees and their respective department budgets, but only for those departments where the average employee salary is greater than 75% of the department's budget.
SELECT e.Name AS EmployeeName, d.Budget AS DepartmentBudget
FROM employees e
INNER JOIN department_budgets d ON e.Department = d.Department
WHERE e.Department IN (
    SELECT Department
    FROM employees
    GROUP BY Department
    HAVING AVG(Salary) > 0.75 * d.Budget
);

SELECT e.Name, db.Budget
FROM employees e
INNER JOIN department_budgets db ON e.Department = db.Department
GROUP BY e.Name, db.Budget
HAVING AVG(e.Salary) > 0.75 * db.Budget;---better

---a) List all employees along with their department budgets, including those without an assigned department. Use LEFT JOIN.
SELECT e.Name, db.Budget
FROM employees e
LEFT JOIN department_budgets db ON e.Department = db.Department;

---b) Display all departments, including those that do not have any employees assigned to them. Use RIGHT JOIN.
SELECT DISTINCT e.Department
FROM employees AS e
RIGHT JOIN department_budgets AS d
ON e.Department = d.Department;

SELECT db.Department, e.Name 
FROM employees e 
RIGHT JOIN department_budgets db ON e.Department = db.Department;---better

---c) Show departments along with the count of employees in each, including departments with zero employees. Use LEFT JOIN and GROUP BY.
SELECT db.Department, COUNT(e.ID) AS EmployeeCount
FROM department_budgets db
LEFT JOIN employees e ON db.Department = e.Department
GROUP BY db.Department;

---d) Task: Find the total salary expense for each department and compare it with the department's budget. List all departments, including those without any employees, and indicate whether they are 'Over Budget', 'Under Budget', or 'No Employees'.
SELECT
    COALESCE(e.Department, db.Department) AS Department,
    COALESCE(SUM(e.Salary), 0) AS TotalSalaryExpense,
    COALESCE(db.Budget, 0) AS DepartmentBudget,
    CASE
        WHEN COALESCE(SUM(e.Salary), 0) > COALESCE(db.Budget, 0) THEN 'Over Budget'
        WHEN COALESCE(SUM(e.Salary), 0) < COALESCE(db.Budget, 0) THEN 'Under Budget'
        ELSE 'No Employees'
    END AS BudgetStatus
FROM
    employees e
RIGHT JOIN
    department_budgets db ON e.Department = db.Department
GROUP BY
    COALESCE(e.Department, db.Department), db.budget;

SELECT db.Department, 
       COALESCE(SUM(e.Salary), 0) AS TotalSalary, 
       db.Budget, 
       CASE 
           WHEN COALESCE(SUM(e.Salary), 0) = 0 THEN 'No Employees'
           WHEN COALESCE(SUM(e.Salary), 0) > db.Budget THEN 'Over Budget'
           ELSE 'Under Budget'
       END AS BudgetStatus
FROM department_budgets db
LEFT JOIN employees e ON db.Department = e.Department
GROUP BY db.Department, db.Budget;---better


-----DAY16
---a) Using a Self Join, find all pairs of employees who work in the same department.
SELECT e1.Name, e2.Name 
FROM employees e1 JOIN employees e2 
ON e1.Department = e2.Department AND e1.ID != e2.ID;

---b) List all employees and their department's budget, even if the department is not in department_budgets. Use Cross Join.
SELECT e.Name, e.Department, db.Budget
FROM employees e 
CROSS JOIN department_budgets db;

---c) Create a comprehensive report listing each employee's name along with every department's budget, then identify employees who share the same department with their namesakes (employees with the same name).
SELECT
    e1.ID, e1.Name, e1.Department,
    db.Budget,
	e2.ID, e2.Name
FROM
    employees e1
JOIN
    department_budgets db ON e1.Department = db.Department
JOIN
    employees e2 ON e1.Name = e2.Name AND e1.ID < e2.ID
ORDER BY
    e1.ID, e2.ID;


SELECT 
    e1.Name AS EmployeeName, 
    db.Department, 
    db.Budget,
    CASE
        WHEN e2.ID IS NOT NULL THEN 'Has Namesake In Department'
        ELSE 'No Namesake In Department'
    END AS NamesakeStatus
FROM employees e1
CROSS JOIN department_budgets db
LEFT JOIN employees e2 ON 
	e1.Name = e2.Name AND e1.Department = e2.Department AND e1.ID != e2.ID;---better

---d) Using a Cross Join, create a report showing every possible combination of employee names and department names, but only include 'Engineering' and 'HR' departments
SELECT e.ID, e.Name, db.Department
FROM
    employees e
CROSS JOIN
    department_budgets db
WHERE
    db.Department IN ('Engineering', 'HR')
ORDER BY
    e.ID, db.Department;

SELECT e.Name AS EmployeeName, db.Department
FROM employees e
CROSS JOIN department_budgets db
WHERE db.Department IN ('Engineering', 'HR');

---DAY 17
CREATE TABLE project_assignments (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    EmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES employees(ID)
);
INSERT INTO project_assignments (ProjectID, ProjectName, EmployeeID, StartDate, EndDate) VALUES
(101, 'Project Alpha', 1, '2022-01-15', '2022-06-30'),
(102, 'Project Beta', 2, '2022-02-01', '2022-07-15'),
(103, 'Project Gamma', 3, '2022-03-01', '2022-08-31'),
(104, 'Project Delta', 4, '2022-04-01', '2022-09-30'),
(105, 'Project Epsilon', 5, '2022-05-05', '2022-10-20'),
(106, 'Project Zeta', 6, '2022-06-10', '2022-11-15'),
(107, 'Project Eta', 7, '2022-07-15', '2022-12-31'),
(108, 'Project Theta', 8, '2022-08-01', '2023-01-20'),
(109, 'Project Iota', 9, '2022-09-10', '2023-02-25'),
(110, 'Project Kappa', 10, '2022-10-15', '2023-03-30'),
(111, 'Project Lambda', 1, '2022-01-20', '2022-07-05'),
(112, 'Project Mu', 2, '2022-02-15', '2022-08-10'),
(113, 'Project Nu', 3, '2022-03-20', '2022-09-15'),
(114, 'Project Xi', 4, '2022-04-25', '2022-10-30'),
(115, 'Project Omicron', 5, '2022-05-30', '2022-11-05'),
(116, 'Project Pi', 6, '2022-07-05', '2023-01-10'),
(117, 'Project Rho', 7, '2022-08-15', '2023-02-20'),
(118, 'Project Sigma', 8, '2022-09-20', '2023-03-25'),
(119, 'Project Tau', 9, '2022-10-25', '2023-04-30'),
(120, 'Project Upsilon', 10, '2022-11-30', '2023-05-05');

---a) List all employees, their departments, and assigned projects, including those without projects.
SELECT e.ID, e.Name, e.Department, p.ProjectID AS AssignedProject
FROM employees e
LEFT JOIN project_assignments p ON e.ID = p.EmployeeID;

---b) Display the departments along with the names of employees who are currently working on projects.
SELECT DISTINCT e.Department, e.Name
FROM employees e
INNER JOIN project_assignments p ON e.ID = p.EmployeeID;

---c) Show the total number of employees and total number of projects for each department.
SELECT e.Department, COUNT(DISTINCT e.ID) AS TotalEmployees, COUNT(DISTINCT p.ProjectID) AS TotalProjects
FROM employees e
LEFT JOIN project_assignments p ON e.ID = p.EmployeeID
GROUP BY e.Department;

---d) Identify employees who are not working on any project despite their department having an allocated budget.
SELECT e.Name, e.Department
FROM employees e
JOIN department_budgets db ON e.Department = db.Department
LEFT JOIN project_assignments p ON e.ID = p.EmployeeID
WHERE p.EmployeeID IS NULL;



