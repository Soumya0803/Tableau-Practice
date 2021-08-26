/* Schema: employees_mod.sql */

/*Create a visualization that provides a breakdown between the male and female employees working in the company
each year, starting from 1990*/

/* Sql Query to output the employees joined each year by gender from 1990*/

SELECT YEAR(D.FROM_DATE) AS CALANDER_YEAR,
E.GENDER,
COUNT(E.EMP_NO) AS NUM_OF_EMPLOYEES
FROM T_EMPLOYEES E JOIN
T_DEPT_EMP D ON 
D.EMP_NO=E.EMP_NO
GROUP BY CALANDER_YEAR,E.GENDER
HAVING CALANDER_YEAR>=1990;