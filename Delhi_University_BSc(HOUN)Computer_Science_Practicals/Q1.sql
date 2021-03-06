
DROP DATABASE Q1;


CREATE DATABASE Q1;


USE Q1;


CREATE TABLE DEPARTMENT(
	DNO INTEGER NOT NULL PRIMARY KEY,
	DNAME VARCHAR(50),
	LOCATION VARCHAR(50) DEFAULT "New Delhi"
	);


CREATE TABLE EMPLOYEE(
	ENO CHAR(3) NOT NULL PRIMARY KEY,
	ENAME VARCHAR(50) NOT NULL,
	JOB_TYPE VARCHAR(50) NOT NULL,
	MANAGER CHAR(3),
	HIRE_DATE DATE NOT NULL,
	DNO INTEGER,
	COMMISSION DECIMAL(10,2),
	SALARY DECIMAL(7,2) NOT NULL,
	FOREIGN KEY (MANAGER)  REFERENCES EMPLOYEE (ENO),
	FOREIGN KEY (DNO)  REFERENCES DEPARTMENT (DNO)
	);


INSERT INTO DEPARTMENT VALUES(10, 'Accounting', 'New York'),
							 (20, 'Research', 'Dallas'),
							 (30, 'Sales', 'Chicago'),
							 (40, 'Operation', 'Boston'),
							 (50, 'Marketing', 'New Delhi');


INSERT INTO EMPLOYEE VALUES('765', 'Martin', 'Sales_man', NULL, '1981-04-22', 30, 1400.00, 1250.00),
						   ('756', 'Jones', 'Manager', NULL, '1981-04-02', 20, 0.00, 2300.00),
						   ('752', 'Ward', 'Sales_man', NULL, '1981-02-22', 30, 500.00, 1300.00),
						   ('749', 'Allan', 'Sales_man', NULL, '1981-02-20', 20, 300.00, 2000.00),
						   ('736', 'Smith', 'Clerk', NULL, '1980-12-17', 20, 0.00, 1000.00),
						   ('793', 'Miller', 'Clerk', NULL, '1982-01-23', 40, 0.00, 1300.00),
						   ('792', 'Ford', 'Analyst', NULL, '1981-12-03', 20, 0.00, 2600.00),
						   ('790', 'James', 'Clerk', NULL, '1981-12-03', 30, 0.00, 950.00),
						   ('787', 'Adams', 'Clerk', NULL, '1983-01-12', 20, 0.00, 1150.00),
						   ('784', 'Turner', 'Sales_man', NULL, '1981-09-08', 30, 0.00, 1450.00),
						   ('783', 'King', 'President', NULL, '1981-11-17', 10, 0.00, 2950.00),
						   ('788', 'Scott', 'Analyst', NULL, '1982-12-09', 20, 0.00, 2850.00),
						   ('778', 'Clark', 'Manager', NULL, '1981-06-09', 10, 0.00, 2900.00),
						   ('769', 'Blake', 'Manager', NULL, '1981-05-01', 30, 0.00, 2870.00);


UPDATE EMPLOYEE SET MANAGER=NULL WHERE ENO='765';
UPDATE EMPLOYEE SET MANAGER='783' WHERE ENO='756';
UPDATE EMPLOYEE SET MANAGER='769' WHERE ENO='752';
UPDATE EMPLOYEE SET MANAGER='769' WHERE ENO='749';
UPDATE EMPLOYEE SET MANAGER='790' WHERE ENO='736';
UPDATE EMPLOYEE SET MANAGER='788' WHERE ENO='793';
UPDATE EMPLOYEE SET MANAGER='756' WHERE ENO='792';
UPDATE EMPLOYEE SET MANAGER='769' WHERE ENO='790';
UPDATE EMPLOYEE SET MANAGER='778' WHERE ENO='787';
UPDATE EMPLOYEE SET MANAGER='769' WHERE ENO='784';
UPDATE EMPLOYEE SET MANAGER=NULL WHERE ENO='783';
UPDATE EMPLOYEE SET MANAGER='756' WHERE ENO='788';
UPDATE EMPLOYEE SET MANAGER='783' WHERE ENO='778';
UPDATE EMPLOYEE SET MANAGER='783' WHERE ENO='769';

