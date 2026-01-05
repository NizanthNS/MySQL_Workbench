-- String Functions

Select LENGTH('skyfall');

Select *
From employee;

Select First_Name, LENGTH(First_Name)
From employee;

Select First_Name, LENGTH(First_Name)
From employee
ORDER BY 2;

Select UPPER('sky');
Select LOWER('SKY');

Select First_Name, UPPER(First_Name)
From employee;

SELECT TRIM('  Sky  ');
SELECT LTRIM('    Sky    ');
SELECT RTRIM('    Sky    ');

Select First_Name, LEFT(First_Name, 4)
From employee;

Select First_Name, RIGHT(First_Name, 4)
From employee;

Select First_Name, 
LEFT(First_Name, 4),
RIGHT(First_Name, 4)
From employee;

Select First_Name, 
LEFT(First_Name, 4),
RIGHT(First_Name, 4),
SUBSTRING(First_Name, 3,2)
From employee;

Select First_Name, 
LEFT(First_Name, 4),
RIGHT(First_Name, 4),
SUBSTRING(First_Name, 3,2),
Birth_Date,
SUBSTRING(Birth_Date, 6,2)
From employee;

Select First_Name, REPLACE(First_Name, 'a', 'z')
From employee;

Select LOCATE('z', 'Niz');

Select First_Name, LOCATE('An', First_Name)
From employee;

Select First_Name, Last_Name
From employee;

Select First_Name, Last_Name,
CONCAT(First_Name,' ', Last_Name) AS Full_Name
From employee;

