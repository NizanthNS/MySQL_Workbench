-- LIMIT And Aliasing

Select * From employee;

Select * From employee
LIMIT 5;

Select * From employee
ORDER BY Age DESC
LIMIT 5;

Select * From employee
ORDER BY Age DESC
LIMIT 3, 1;

Select * From employee
ORDER BY Age DESC
LIMIT 3, 2;

-- Aliasing

Select Gender, AVG(Age) AS Average_Age
From employee
Group BY Gender
HAVING Average_Age > 40;