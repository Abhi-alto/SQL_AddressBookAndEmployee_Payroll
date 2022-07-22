CREATE database Payroll_Service
USE Payroll_Service
CREATE Table Employee_Payroll(
			ID int Not NULL Primary Key IDentity(1,1),
			FullName varchar(255),
			Salary float,
			StartDate Date
			)
INSERT into Employee_Payroll(
							 [FullName],
							 [Salary],
							 [StartDate])
values('Rohan Ganguly',100000,'May 15,2009'),
	   ('Shubham Mishra',200000,'Sep 14,2012'),
	   ('Shyam Maurya',100000,'Mar 1, 2008'),
	   ('Harsh Vardhan',23000,'Oct 20,2022');

SELECT * from Employee_Payroll

SELECT Salary from Employee_Payroll
			where FullName='Shyam Maurya'

SELECT * from Employee_Payroll
			where StartDate between CAST('May 15,2009' as date) and GETDATE();

Alter table Employee_Payroll
ADD gender char(1)

INSERT into Employee_Payroll(
							 [FullName],
							 [Salary],
							 [StartDate])
values('Ankita Jaiswal',120000,'May 15,2019'),
		('Sheena Goswami',85000,'Dec 25,2011');

UPDATE Employee_Payroll
			SET gender='M'
UPDATE Employee_Payroll
			SET gender='F'
			where FullName='Ankita Jaiswal' or FullName='Sheena Goswami'

SELECT SUM(Salary) FROM Employee_Payroll

SELECT Max(Salary) FROM Employee_Payroll
SELECT Min(Salary) FROM Employee_Payroll

SELECT AVG(Salary) FROM Employee_Payroll
SELECT COUNT(ID) FROM Employee_Payroll

SELECT SUM(Salary) FROM Employee_Payroll
		where gender='F' group by gender;

SELECT SUM(Salary) FROM Employee_Payroll
		where gender='M' group by gender;