-- Window Functions

Select *
From employee;

Select Gender, AVG(Salary) AS Average_Salary
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id
GROUP BY Gender;

Select Gender, AVG(Salary) OVER(PARTITION BY Gender)
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.First_Name, emp.Last_Name, Gender, 
AVG(Salary) OVER(PARTITION BY Gender) AS Average_Salary
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.First_Name, emp.Last_Name, Gender, AVG(Salary) AS Average_Salary
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id
GROUP BY emp.First_Name, emp.Last_Name, Gender;

Select emp.First_Name, emp.Last_Name, Gender, 
SUM(Salary) OVER(PARTITION BY Gender ORDER BY emp.Emp_id) AS Rolling_Total
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.First_Name, emp.Last_Name, Gender, Salary, 
SUM(Salary) OVER(PARTITION BY Gender ORDER BY emp.Emp_id) AS Rolling_Total
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.Emp_id, emp.First_Name, emp.Last_Name, Gender, Salary, 
ROW_NUMBER() OVER()
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.Emp_id, emp.First_Name, emp.Last_Name, Gender, Salary, 
ROW_NUMBER() OVER(PARTITION BY Gender) AS Row_No
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.Emp_id, emp.First_Name, emp.Last_Name, Gender, Salary, 
ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Salary DESC) AS Row_No
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.Emp_id, emp.First_Name, emp.Last_Name, Gender, Salary, 
ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Salary DESC) AS Row_No,
RANK() OVER(PARTITION BY Gender ORDER BY Salary DESC) AS Rank_No
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;
    
Select emp.Emp_id, emp.First_Name, emp.Last_Name, Gender, Salary, 
ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Salary DESC) AS Row_No,
RANK() OVER(PARTITION BY Gender ORDER BY Salary DESC) AS Rank_,
DENSE_RANK() OVER(PARTITION BY Gender ORDER BY Salary DESC) AS DRank
From employee emp
JOIN employee_salary sal
	ON emp.Emp_id = sal.Emp_id;