Create Table My_time(
	My_time time,
    My_Date date,
    My_Date_time datetime
    );
    
Insert into My_time
Values(current_time(), current_date(), now());

Select * from My_time