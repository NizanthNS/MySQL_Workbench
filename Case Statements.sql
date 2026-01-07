-- Case Statements

Select *
From employee;

Select First_Name, Last_Name,
CASE
	WHEN age <= 30 then 'Young'
END
From employee;

Select First_Name, Last_Name, Age,
CASE
    WHEN age > 50 THEN 'Old'
	WHEN age > 30 THEN 'Middle Age'
	WHEN age <= 30 THEN 'Young'
END AS Label
From employee;

Select First_Name, Last_Name, Age,
CASE
	WHEN age <= 30 THEN 'Young'
	WHEN age BETWEEN 30 AND 39 THEN 'Middle Age'
	WHEN age BETWEEN 40 AND 49 THEN 'Old'
	WHEN age >= 50 THEN "Retire Time"
END AS Label
From employee;

Select *
From employee_salary;

-- Pay Increase and Bonus
-- < 50000 - 5%
-- > 50000 - 7%
-- Finance = 10%

Select First_Name, Last_Name, Salary,
CASE
	WHEN Salary < 50000 THEN Salary * 1.05
    WHEN Salary > 50000 THEN Salary * 1.07
END AS New_Salary
From employee_salary;

Select *
From green_department;

Select First_Name, Last_Name, Salary,
CASE
	WHEN Salary < 50000 THEN Salary * 1.05
    WHEN Salary > 50000 THEN Salary * 1.07
END AS New_Salary,
CASE
	WHEN Department_id = 6 THEN Salary * .10
END AS Bonus
From employee_salary;