-- HAVING Vs WHERE

Select Gender, AVG(Age) AS Average_Age
From employee
Group BY Gender
HAVING AVG(Age) > 40;

Select * From employee_salary;

Select Occupation, AVG(Salary)
From employee_salary
Group BY Occupation;

Select Occupation, AVG(Salary)
From employee_salary
WHERE Occupation LIKE '%Manager%'
Group BY Occupation;

Select AVG(Salary) AS Average_Salary
From employee_salary
HAVING AVG(Salary) > 45000;

Select Occupation, AVG(Salary)
From employee_salary
WHERE Occupation LIKE '%Manager%'
Group BY Occupation
HAVING AVG(Salary) > 55000;

-- WHERE filters rows first, WHERE cannot use aggregate functions
-- HAVING filters grouped result, HAVING can use aggregate functions