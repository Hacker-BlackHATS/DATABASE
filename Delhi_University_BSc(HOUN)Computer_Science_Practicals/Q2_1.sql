_____________________________________________________________________________________________________________________________________
-------------------------------------------------------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-------------------------------------------------------------------------------------------------------------------------------------
_____________________________________________________________________________________________________________________________________
OPEN MYSQL IN TERMINAL:-
_____________________________________________________________________________________________________________________________________
sudo /opt/lampp/lampp startmysql;sudo /opt/lamppp/bin/mysql -u root;
_____________________________________________________________________________________________________________________________________


1.) SELECT 
		* 
	FROM EMPLOYEE;
_____________________________________________________________________________________________________________________________________
2.) 
_____________________________________________________________________________________________________________________________________
3.) SELECT 
		BDATE, ADDRESS 
	FROM EMPLOYEE 
		WHERE (FNAME="FRANKLIN" AND MINIT="T" AND LNAME="WONG");
_____________________________________________________________________________________________________________________________________
4.) SELECT 
		CONCAT_WS(" ",FNAME,MINIT,LNAME) AS NAME, SALARY 
	FROM EMPLOYEE;
_____________________________________________________________________________________________________________________________________
5.) SELECT 
		DISTINCT SALARY 
	FROM EMPLOYEE;
_____________________________________________________________________________________________________________________________________
6.) SELECT 
		CONCAT_WS(" ",FNAME,MINIT,LNAME) AS NAME 
	FROM EMPLOYEE 
		WHERE ADDRESS LIKE("%BELLAIRE%");
_____________________________________________________________________________________________________________________________________
7.) SELECT 
		* 
	FROM EMPLOYEE 
		WHERE BDATE LIKE("195_%");
_____________________________________________________________________________________________________________________________________
8.) SELECT 
		* 
	FROM EMPLOYEE 
		WHERE (DNO=5 AND SALARY BETWEEN 50000 AND 60000);
_____________________________________________________________________________________________________________________________________
9.) SELECT 
		* 
	FROM EMPLOYEE 
		WHERE SUPER_SSN IS NULL;
_____________________________________________________________________________________________________________________________________
10.) SELECT 
		SSN, DNAME 
	FROM EMPLOYEE 
		LEFT JOIN DEPARTMENT 
			ON DNO=DNUMBER;
_____________________________________________________________________________________________________________________________________
11.) SELECT 
		CONCAT_WS(" ",FNAME,MINIT,LNAME) AS NAME, ADDRESS 
	FROM EMPLOYEE 
		INNER JOIN DEPARTMENT 
			ON DNO=DNUMBER 
		WHERE DNAME="RESEARCH";
_____________________________________________________________________________________________________________________________________
12.) SELECT 
		PNUMBER, DNO, LNAME,ADDRESS, BDATE 
	FROM PROJECT 
		INNER JOIN EMPLOYEE 
			ON DNO=EMPLOYEE.DNO 
		WHERE PLOCATION="STAFFORD";
_____________________________________________________________________________________________________________________________________
13.) SELECT 
		CONCAT_WS(" ",A.FNAME, A.MINIT, A.LNAME) AS "EMPLOYEE", CONCAT_WS(" ",B.FNAME, B.MINIT, B.LNAME) AS SUPERVISOR 
	FROM EMPLOYEE A, EMPLOYEE B 
		WHERE A.SUPER_SSN=B.SSN;
_____________________________________________________________________________________________________________________________________
14.) SELECT 
		CONCAT_WS(" ",FNAME,MINIT,LNAME) AS "EMPLOYEE NAME",DNAME AS "DEPARTMENT NAME" 
	FROM EMPLOYEE, DEPARTMENT;
_____________________________________________________________________________________________________________________________________
15.) 
_____________________________________________________________________________________________________________________________________
16.) UPDATE 
		EMPLOYEE 
			SET SALARY=SALARY+(SALARY*0.15) 
		WHERE FNAME IN (SELECT 
							FNAME 
						FROM EMPLOYEE 
							INNER JOIN WORKS_ON 
								ON SSN=ESSN 
							WHERE PNO=(SELECT 
											PNUMBER 
										FROM PROJECT 
											WHERE PNAME="PROJECTX"));
	SELECT 
		CONCAT_WS(" ",FNAME,MINIT,LNAME) AS "EMPLOYEE NAME", SALARY 
	FROM EMPLOYEE 
		INNER JOIN WORKS_ON 
			ON SSN=ESSN 
		WHERE PNO=(SELECT 
						PNUMBER 
					FROM PROJECT 
						WHERE PNAME="PROJECTX");

_____________________________________________________________________________________________________________________________________
17.) SELECT CONCAT_WS(" ",FNAME,MINIT,LNAME) AS "EMPLOYEE NAME", PNAME AS "PROJECT NAME" FROM EMPLOYEE INNER JOIN WORKS_ON ON SSN=ESSN INNER JOIN PROJECT ON PNUMBER = PNO ORDER BY DNO,FNAME;

_____________________________________________________________________________________________________________________________________
18.) 
_____________________________________________________________________________________________________________________________________
19.) SELECT 
		CONCAT_WS(" ", FNAME,MINIT,LNAME) AS "EMPLOYEE NAME" 
	FROM EMPLOYEE 
		INNER JOIN DEPENDENT 
			ON (FNAME=DEPARTMENT_NAME) AND (EMPLOYEE.SEX=DEPENDENT.SEX);
_____________________________________________________________________________________________________________________________________
20.) SELECT 
		DISTINCT SSN 
	FROM EMPLOYEE 
		INNER JOIN WORKS_ON 
			ON SSN=ESSN 
		INNER JOIN PROJECT 
			ON PNUMBER = PNO 
		WHERE PLOCATION IN("Bellaire", "Houston", "Stafford");
_____________________________________________________________________________________________________________________________________
21.) SELECT 
		SUM(SALARY) AS SUM, MAX(SALARY) AS "MAXIMUM SALARY", MIN(SALARY) AS "MINIMUM SALARY", AVG(SALARY) AS "AVERAGE SALARY" 
	FROM EMPLOYEE;
_____________________________________________________________________________________________________________________________________
22.) SELECT 
		SUM(SALARY) AS SALARY, 
		COUNT(*) AS "NUMBER OF EMPLOYEES", 
		MAX(SALARY) AS "MAXIMUM SALARY", 
		MIN(SALARY) AS "MINIMUM SALARY", 
		AVG(SALARY) AS "AVERAGE SALARY" 
	FROM EMPLOYEE 
		WHERE DNO=(SELECT 
						DNUMBER 
					FROM DEPARTMENT 
						WHERE DNAME="Marketing");
_____________________________________________________________________________________________________________________________________
23.) SELECT 
		CONCAT_WS(" ", FNAME, MINIT, LNAME) AS "EMPLOYEE NAME" 
	FROM EMPLOYEE 
		WHERE SALARY > (SELECT 
							AVG(SALARY) 
						FROM EMPLOYEE) AND DNO=10;
_____________________________________________________________________________________________________________________________________
24.) SELECT 
		DNO, COUNT(*) AS "NUMBER OF EMPLOYEE", AVG(SALARY) AS "AVERAGE SALARY" 
	FROM EMPLOYEE 
		GROUP BY DNO;
_____________________________________________________________________________________________________________________________________
25.) SELECT 
		PNUMBER, PNAME, COUNT(*) AS "NUMBER OF EMPLOYEE" 
	FROM PROJECT 
		INNER JOIN WORKS_ON 
			ON PNUMBER=PNO 
		GROUP BY PNUMBER;
_____________________________________________________________________________________________________________________________________
26.) 
_____________________________________________________________________________________________________________________________________
27.) 
_____________________________________________________________________________________________________________________________________
28.) 
_____________________________________________________________________________________________________________________________________
29.) 
_____________________________________________________________________________________________________________________________________
30.) 
_____________________________________________________________________________________________________________________________________
-------------------------------------------------------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-------------------------------------------------------------------------------------------------------------------------------------
_____________________________________________________________________________________________________________________________________
