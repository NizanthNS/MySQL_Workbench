-- CTEs

WITH CTE_EX AS
(
Select Gender, AVG(Salary) AS Avg_Sal, MAX(Salary) AS Max_Sal, 
MIN(Salary) AS Min_Sal, COUNT(Salary) AS Count_Sal
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id
GROUP BY Gender
)
Select *
From CTE_EX;


Select AVG(Avg_Sal)
From (Select Gender, AVG(Salary) AS Avg_Sal, MAX(Salary) AS Max_Sal, 
MIN(Salary) AS Min_Sal, COUNT(Salary) AS Count_Sal
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id
GROUP BY Gender
) Ex_Subquery;


WITH CTE_EX AS
(
Select Emp_id, Gender, Birth_Date
From employee
WHERE Birth_date > '1988-01-01'
),
CTE_EX1 AS
(
Select Emp_id, Salary 
From employee_salary
WHERE Salary > 5000
)
Select *
From CTE_EX
JOIN CTE_EX1
	ON CTE_EX.Emp_id = CTE_EX1.Emp_id;
    

WITH CTE_EX (Gender, Average_Sal, MAX_Sal, MIN_Sal, COUNT_Sal) AS
(
Select Gender, AVG(Salary) AS Avg_Sal, MAX(Salary) AS Max_Sal, 
MIN(Salary) AS Min_Sal, COUNT(Salary) AS Count_Sal
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id
GROUP BY Gender
)
Select *
From CTE_EX;