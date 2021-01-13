--Ability to view all tables
SELECT * FROM departments;
SELECT * FROM emp_to_dept;
SELECT * FROM employee_data;
SELECT * FROM manager;
SELECT * FROM salaries;
SELECT * FROM titles;

--"List the following details of each employee: employee number, last name, first name, sex, and salary"
SELECT employee_data.emp_no, employee_data.last_name, employee_data.first_name, employee_data.sex, salaries.salary
FROM employee_data JOIN salaries ON employee_data.emp_no = salaries.emp_no;

--"List first name, last name, and hire date for employees who were hired in 1986."
SELECT first_name, last_name, hire_date 
FROM employee_data WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';