Select * From employee;

Select Gender From employee
Group BY Gender;

Select Gender, AVG(Age) AS Average_Age
From employee
Group BY Gender;

Select * From employee_salary;

Select Occupation, Salary
From employee_salary
Group BY Occupation, Salary;

Select Gender, AVG(Age) AS Average_Age, MAX(Age), MIN(Age), COUNT(Age)
From employee
Group BY Gender;

-- ORDER BY --

Select * From employee;

Select * From employee
ORDER BY First_Name;

Select * From employee
ORDER BY First_Name DESC;

Select * From employee
ORDER BY Gender;

Select * From employee
ORDER BY Gender, Age;

Select * From employee
ORDER BY Gender, Age DESC;

Select * From employee
ORDER BY 5, 4; -- Not Recommeded