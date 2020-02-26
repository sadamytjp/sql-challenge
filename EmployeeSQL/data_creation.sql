'Create tables'

CREATE TABLE employees (
emp_no int PRIMARY KEY not null,
birth_date DATE not null,
first_name VARCHAR(20) not null,
last_name VARCHAR(20) not null,
gender CHAR(1) not null,
hire_date DATE not null
);

CREATE TABLE titles (
emp_no int not null,
title CHAR(20) not null,
from_date DATE not null,
to_date DATE not null	
);

CREATE TABLE dept_emp (
emp_no int not null,
dept_no VARCHAR(20) not null,
from_date DATE not null,
to_date DATE not null
);

CREATE TABLE departments (
dept_no int PRIMARY KEY not null,
dept_name VARCHAR(20) not null
);

CREATE TABLE salaries (
emp_no int not null,
salary int not null,
from_date date not null,
to_date date not null
);

CREATE TABLE dept_managers (
dept_no INT not null,
emp_no int not null
);

'Add foreign keys'

ALTER TABLE salaries 
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE titles 
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE dept_emp 
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE dept_emp 
ADD FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

ALTER TABLE dept_managers 
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE dept_managers 
ADD FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

ALTER TABLE departments 
ADD FOREIGN KEY (dept_no) REFERENCES dept_emp (dept_no);