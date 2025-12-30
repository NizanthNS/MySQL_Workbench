Select * 
From employee;
Select * 
From employee_salary;

Select * 
From employee
UNION
Select * 
From employee_salary;

-- UNION : Don't Allow Duplicates

Select Age, Gender 
From employee
UNION
Select First_Name, Last_Name 
From employee_salary;

Select First_Name, Last_Name 
From employee
UNION
Select First_Name, Last_Name 
From employee_salary;

-- UNION ALL : Allow Duplicates

Select First_Name, Last_Name 
From employee
UNION ALL
Select First_Name, Last_Name 
From employee_salary;

Select First_Name, Last_Name 
From employee
WHERE Age > 40;

Select First_Name, Last_Name, 'Old' AS Label
From employee
WHERE Age > 40;

SELECT Age, First_Name, Last_Name,
CASE
	WHEN Age > 40 THEN 'Old'
	WHEN Age <= 30 THEN 'Young'
	WHEN Age > 30 THEN 'Middle Aged'
END AS Label
FROM employee;

Select First_Name, Last_Name, 'Old' AS Label
From employee
WHERE Age > 50
UNION
Select First_Name, Last_Name, 'Highly Paid Employee' AS Label
From employee_salary
WHERE Salary > 70000;

Select First_Name, Last_Name, 'Old Man' AS Label
From employee
WHERE Age > 40 AND Gender = 'Male'
UNION
Select First_Name, Last_Name, 'Old Lady' AS Label
From employee
WHERE Age > 40 AND Gender = 'Female'
UNION
Select First_Name, Last_Name, 'Highly Paid Employee' AS Label
From employee_salary
WHERE Salary > 70000;

Select First_Name, Last_Name, 'Old Man' AS Label
From employee
WHERE Age > 40 AND Gender = 'Male'
UNION
Select First_Name, Last_Name, 'Old Lady' AS Label
From employee
WHERE Age > 40 AND Gender = 'Female'
UNION
Select First_Name, Last_Name, 'Highly Paid Employee' AS Label
From employee_salary
WHERE Salary > 70000
ORDER BY First_Name, Last_Name;

