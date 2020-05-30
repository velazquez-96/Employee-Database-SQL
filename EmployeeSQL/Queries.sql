
SELECT * FROM "Departments";
SELECT * FROM "Departments_employees";
SELECT * FROM "Departments_manager";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";

--List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT "Employees".employee_num, "Employees".last_name, "Employees".first_name,
"Employees".gender, "Salaries".salary
FROM "Employees"
LEFT JOIN "Salaries"
ON "Employees".employee_num = "Salaries".employee_num;

-- List employees who were hired in 1986.
SELECT employee_num, last_name, first_name, hire_date
FROM "Employees"
WHERE hire_date BETWEEN  '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: 
--department number, department name, the manager's employee 
--number, last name, first name, and start and end employment dates.

SELECT "Departments".department_name, "Departments_manager".department_num,
"Departments_manager".employee_num, "Employees".last_name,
"Employees".first_name, "Departments_manager".from_date,
"Departments_manager".to_date
FROM "Departments_manager"
LEFT JOIN "Departments" ON "Departments_manager".department_num = "Departments".department_num
LEFT JOIN "Employees" ON "Departments_manager".employee_num = "Employees".employee_num;

--List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT "Departments_employees".employee_num, "Employees".last_name, "Employees".first_name, 
"Departments".department_name
FROM "Departments_employees"
LEFT JOIN "Departments" ON "Departments_employees".Department_num = "Departments".Department_num
LEFT JOIN "Employees" ON "Departments_employees".employee_num = "Employees".employee_num;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name,
-- first name, and department name.

SELECT "Departments_employees".employee_num, "Employees".last_name, 
"Employees".first_name, "Departments".department_name
FROM "Departments_employees"
INNER JOIN "Departments" ON "Departments_employees".department_num = "Departments".department_num
INNER JOIN "Employees" ON "Departments_employees".employee_num = "Employees".employee_num
WHERE "Departments".department_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT "Departments_employees".employee_num, "Employees".last_name, 
"Employees".first_name, "Departments".department_name
FROM "Departments_employees"
INNER JOIN "Departments" ON "Departments_employees".department_num = "Departments".department_num
INNER JOIN "Employees" ON "Departments_employees".employee_num = "Employees".employee_num
WHERE "Departments".department_name = 'Sales' OR "Departments".department_name = 'Development';

-- In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;








