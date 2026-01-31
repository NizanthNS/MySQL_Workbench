-- Temporary Tables

Create TEMPORARY TABLE temp_table
		(
		First_Name Varchar(50),
        Last_Name Varchar(50),
        Favorite_Movie Varchar(100)
        );

        
Select *
From temp_table;


Insert INTO temp_table
	Values('Jodo', 'Slot', 'Avengers'),
		  ('Lero', 'Uno', 'Black widow'),
          ('Shane', 'Minus', 'Batman');
 
 
Select *
From temp_table;


Select *
From employee_salary;


Create TEMPORARY TABLE Salary_over_50K
Select *
From employee_salary
WHERE Salary >= 50000;


Select *
From Salary_over_50K;