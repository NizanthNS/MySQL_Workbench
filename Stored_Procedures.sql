-- Stored Procedures

Select *
From employee_salary
WHERE Salary >= 50000;


Create PROCEDURE large_salaries()
Select *
From employee_salary
WHERE Salary >= 50000;


CALL large_salaries();


DELIMITER $$
Create PROCEDURE large_salaries2()
BEGIN
	Select *
	From employee_salary
	WHERE Salary >= 50000;
	Select *
	From employee_salary
	WHERE Salary >= 10000;
END $$
DELIMITER ;


CALL large_salaries2();



Select * 
From employee_salary;


DELIMITER $$
Create PROCEDURE large_salaries3(EMP_id_P INT)
BEGIN
	Select Salary
	From employee_salary
    WHERE EMP_id = EMP_id_P;
END $$
DELIMITER ;


CALL large_salaries3(3);