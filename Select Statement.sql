Select * From employee;

Select First_Name, 
Last_Name,
Birth_date, 
Age 
From employee;

Select First_Name, 
Last_Name,
Birth_date, 
Age,
Age + 10 As Future_10
From employee;

Select First_Name, 
Last_Name,
Birth_date, 
Age,
Age + 10 As Future_10,
(Age + 10) * 10
From employee;

# PEMDAS
# P – Parentheses
# E – Exponents
# M – Multiplication
# D – Division
# A – Addition
# S – Subtraction

Select DISTINCT First_Name
From employee;

Select Gender
From employee;

Select DISTINCT Gender
From employee;

Select DISTINCT First_Name, Gender
From employee;