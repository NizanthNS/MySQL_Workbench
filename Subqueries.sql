-- Subqueries

Select *
From employee;

Select *
From employee_salary;

Select *
From employee
WHERE Emp_id IN
	(
    Select Emp_id
	From employee_Salary
	WHERE Department_id = 1
    );
    
Select First_Name, Salary,
	(
    Select AVG(Salary)
    From employee_salary
    ) AS Average_Salary
    From employee_Salary;
    
Select Gender, MAX(Age), MIN(Age), COUNT(Age), AVG(Age)
From Employee
GROUP BY Gender;

Select AVG(Max_Age)
From
(
Select Gender,
AVG(Age) AS Avg_Age,
MAX(Age) AS Max_Age,
MIN(Age) AS Min_Age,
COUNT(Age)
From employee
GROUP BY Gender
) AS Agg_Table;

Select MAX(Salary) AS Second_Highest_Salary
From employee_salary
WHERE Salary < (Select MAX(Salary) From employee_salary);

Select *
From Employee_Salary
ORDER BY Salary DESC;

Select First_Name, Last_Name, Salary AS Second_Highest_Salary
From employee_salary
Where Salary = (
		Select MAX(Salary)
        From employee_salary
        WHERE Salary < (Select MAX(Salary) From employee_salary)
        );