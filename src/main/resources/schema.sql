CREATE TABLE department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100)
);

CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  dob DATE,
  gender CHAR(1),
  department INT,
  FOREIGN KEY (department) REFERENCES department(department_id)
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  emp_id INT,
  amount DECIMAL(10,2),
  payment_time TIMESTAMP,
  FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);
