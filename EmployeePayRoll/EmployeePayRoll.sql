-- UC-1-create Database
create database payroll_service
use payroll_service


--UC2-Creating Table
create table employee_payroll
(   emp_id int  not null identity(1,1) primary key,
	Emp_name varchar(50),
	salary double precision not null ,
	start date not null,
)


--UC3-Creating Employee Payroll Data
insert into employee_payroll (Emp_name,salary,start) values
	('venu',598722.00,'2021-12-12'),
	('gopal',586649.00,'2011-04-04'),
	('reddy',753575.00,'2020-03-03'),
	('ABc',159159.00,'2009-02-02')


--UC4-Retrieve Data From Table
select * from employee_payroll 