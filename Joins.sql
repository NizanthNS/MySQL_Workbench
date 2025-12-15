-- JOINS OR INNER JOIN

Select * From employee;

Select * From employee_salary;

Select * From employee
INNER JOIN employee_salary
	ON employee.EMP_id = employee_salary.EMP_id;

Select * From employee AS emp
INNER JOIN employee_salary AS sal
	ON emp.EMP_id = sal.EMP_id;

Select emp.Emp_id, Age, Occupation
From employee AS emp
INNER JOIN employee_salary AS sal
	ON emp.EMP_id = sal.EMP_id;

Select emp.Emp_id, emp.First_Name, Occupation
From employee AS emp
INNER JOIN employee_salary AS sal
	ON emp.Emp_id = sal.Emp_id;

-- Left JOIN or Left Outer JOIN

Select * From employee AS emp
Left JOIN employee_salary AS sal
	ON emp.EMP_id = sal.EMP_id;

-- Right JOIN OR Right Outer JOIN

Select * From employee AS emp
Right JOIN employee_salary AS sal
	ON emp.EMP_id = sal.EMP_id;

-- Self JOIN

Select * From employee_salary;

Select * From employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.Emp_id = emp2.Emp_id;
    
Select * From employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.Emp_id + 1 = emp2.Emp_id;
    
Select 
emp1.Emp_id As Ateam_id,
emp1.First_name As Ateam_FN,
emp1.Last_name As Ateam_LN,
emp2.Emp_id As Bteam_id,
emp2.First_name As Bteam_FN,
emp2.Last_name As Bteam_LN
From employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.Emp_id + 1 = emp2.Emp_id;
    
-- FULL OUTER JOIN - NOT supported in MySQL

Select * From employee
FULLOUTER JOIN employee_salary
	ON employee.EMP_id = employee_salary.EMP_id;
    
-- Joining Multiple Table Together

Select * From green_department;

Select *
From employee AS emp
INNER JOIN employee_salary AS sal
	ON emp.Emp_id = sal.Emp_id
INNER JOIN green_department As gd
	ON sal.Department_id = gd.Department_id;