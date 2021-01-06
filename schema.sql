DROP TABLE employee_data;
DROP TABLE titles
DROP TABLE manager
DROP TABLE departments 
DROP TABLE salaries 
DROP TABLE emp_to_dept 
DROP TABLE departments 

SELECT * FROM departments

CREATE TABLE departments (
	dept_no VARCHAR (30),
	dept_name VARCHAR (30),
	CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

SELECT * FROM manager

CREATE TABLE manager (
	dept_no VARCHAR (30),
	emp_no INT NOT NULL
);

SELECT * FROM emp_to_dept

CREATE TABLE emp_to_dept (
	emp_no VAR CHAR (30),
	dept_no VARCHAR (30)
);

SELECT * FROM employee_data;

CREATE TABLE employee_data (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) ,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(10),
	hire_date date,
	CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

SELECT * FROM titles

CREATE TABLE titles (
	title_id VARCHAR(30),
	title VARCHAR(30)
);

\
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

ALTER TABLE emp_to_dept ADD CONSTRAINT fk_empdep_emp FOREIGN KEY(emp_no)
REFERENCES employee_data (emp_no);

ALTER TABLE emp_to_dept ADD CONSTRAINT fk_empdep_dep FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE manager ADD CONSTRAINT fk_manager_dept FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE manager ADD CONSTRAINT fk_manager_emp FOREIGN KEY(emp_no)
REFERENCES employee_data (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp FOREIGN KEY(emp_no)
REFERENCES employee_data (emp_no);

ALTER TABLE employee_data ADD CONSTRAINT fk_titles_emp_titles FOREIGN KEY (emp_title_id)
REFERENCES titles (title_id);

