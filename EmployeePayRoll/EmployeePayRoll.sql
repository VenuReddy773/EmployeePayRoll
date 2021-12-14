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


