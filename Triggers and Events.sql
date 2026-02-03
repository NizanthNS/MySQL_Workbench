-- Triggers and Events

Select *
From employee;


Select *
From employee_salary;


Select *
From green_department;


DELIMITER $$
Create TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee(Emp_id, First_Name, Last_Name)
    VALUES(New.Emp_id, New.First_Name, New.Last_Name);
END $$
DELIMITER ;


INSERT INTO employee_salary(Emp_id, First_Name, Last_Name, Occupation, Salary, Department_id)
VALUES(13, 'Ralp', 'Stonie', 'Doctor', 85000, 4);


Select *
From employee_salary;


Select *
From employee;


-- Events

Select *
From employee;


DELIMITER $$
CREATE EVENT Delete_Retire
ON SCHEDULE EVERY 1 YEAR
DO
BEGIN
	DELETE
	From employee
    WHERE Age > 60;
END $$
DELIMITER ;


SHOW VARIABLES LIKE 'event%';