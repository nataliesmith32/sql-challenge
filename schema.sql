DROP TABLE employee_data;

SELECT * FROM employee_data;

CREATE TABLE employee_data (
	emp_no INT NOT NULL,
	emp_title_id INT NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(10),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

DROP TABLE titles

SELECT * FROM titles

CREATE TABLE titles (
	title_id INT NOT NULL,
	title VARCHAR(30),
	PRIMARY KEY (title_id)
);

DROP TABLE salaries 

SELECT * FROM salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);

DROP TABLE emp_to_dept 

SELECT * FROM emp_to_dept

CREATE TABLE emp_to_dept (
	emp_no INT NOT NULL,
	dept_no INT NOT NULL,
	PRIMARY KEY (emp_no)
);

DROP TABLE departments 

SELECT * FROM departments

CREATE TABLE departments (
	dept_no INT NOT NULL,
	dept_name VARCHAR (30),
	PRIMARY KEY (dept_no)
);

DROP TABLE departments 

SELECT * FROM departments

CREATE TABLE departments (
	dept_no INT NOT NULL,
	dept_name VARCHAR (30),
	PRIMARY KEY (dept_no)
);

DROP TABLE manager

SELECT * FROM manager
	dept_no INT NOT NULL,
	emp_no INT NOT NULL