Select * From employee;

Select * From employee_salary
Where First_Name = "Tom";

Select * From employee_salary;

Select * From employee_salary
Where Salary > 50000;

Select * From employee_salary
Where Salary >= 50000;

Select * From employee_salary
Where Salary < 50000;

Select * From employee_salary
Where Salary <= 50000;

Select * From employee;

Select * From employee
Where Gender = "Female";

Select * From employee
Where Gender != "Female";

Select * From employee
Where Birth_date > "1985-12-25";

-- Logical Operators AND OR NOT --

Select * From employee
Where Birth_date > "1985-12-25"
AND Gender = "Male";

Select * From employee
Where Birth_date > "1985-12-25"
OR Gender = "Male";

Select * From employee
Where Birth_date > "1985-12-25"
OR NOT Gender = "Male";

Select * From employee
Where Birth_date > "1985-12-25"
AND NOT Gender = "Male";

Select * From employee;

Select * From employee
Where First_Name = "Ben"
AND Age = 38;

Select * From employee
Where (First_Name = "Ben"
AND Age = 38) OR Age > 50;

-- LIKE Statement --
-- %  _ --

Select * From employee
Where First_Name Like "An%";

Select * From employee
Where First_Name Like "%en";

Select * From employee
Where First_Name Like "%er%";

Select * From employee
Where First_Name Like "A%";

Select * From employee
Where First_Name Like "A__";

Select * From employee
Where First_Name Like "__n";

Select * From employee
Where First_Name Like "A___%";

Select * From employee
Where Birth_date Like "198%";