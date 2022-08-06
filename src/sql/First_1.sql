
CREATE DATABASE IF NOT EXISTS THEFOURTHWEEK;

DROP TABLE IF EXISTS employees ;

CREATE TABLE IF NOT EXISTS employees(
                                        emp_no INT UNSIGNED,
                                        birth_date DATE,
                                        first_name CHAR(20),
                                        last_name CHAR(20),
                                        gender VARCHAR(1),
                                        hire_date DATE
);

INSERT INTO employees VALUES (10001,'1953-09-02','Georgi','Facello','M','1986-06-26'),
                             (10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),
                             (10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),
                             (10004,'1954-05-01','Christian','Koblick','M','1986-12-01');

SELECT * FROM employees WHERE hire_date =(select max(hire_date) from employees);