# Employee Database Analysis

The project consist on three parts:
* Data Modeling 
  - Inspect the CSVs and sketch out an ERD of the tables
* Data Engineering 
  - Create a table schema for each of the six CSV files
* Data analysis 
  - Run the SQL queries to obtain the following:
  
    - List the following details of each employee: employee number, last name, first name, gender, and salary.
    - List employees who were hired in 1986.
    - List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
    - List the department of each employee with the following information: employee number, last name, first name, and department name.
    - List all employees whose first name is "Hercules" and last names begin with "B."
    - List all employees in the Sales department, including their employee number, last name, first name, and department name.
    - List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
    - In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Features

* Data modeling, engineering and analysis
* Use of sqlalchemy for the connection to the database

## Built with 

* PostgreSQL
* Python

## Outcomes

Here you can check some outcomes of the project. However, all the results are contained in the files; feel free to check them out

Entity Relationship Diagram 

![Image3.png](Images/Image3.png)

Bar chart of average salary by title

![Image2.png](Images/Image2.png)

Histogram fo salary ranges from employees

![Image1.png](Images/Image1.png)
