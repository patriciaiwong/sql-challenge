CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no);

CREATE TABLE departments (
	dept_no VARCHAR
	dept_name VARCHAR(30)
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
    dept_no INT NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);


CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no,title, from_date)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no,from_date)
	);

