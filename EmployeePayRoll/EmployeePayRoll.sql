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

--UC5-Selceted Data Retrievel
select salary from employee_payroll where Emp_name = 'gopal'
select * from employee_payroll
where start between cast('2019-02-03' as date) and getdate();

--UC6-Alter Table 
alter table employee_payroll add gender char(1) 
update employee_payroll set gender = 'M' where Emp_name ='venu'
update employee_payroll set gender = 'F' where Emp_name ='ABc'
update employee_payroll set gender = 'M' where Emp_name ='reddy' or Emp_name='gopal'

--UC7-Aggregate Functions
select sum(salary) from employee_payroll where gender='M' group by gender
select sum(salary) from employee_payroll where gender='F' group by gender

select avg(salary) from employee_payroll where gender='M' group by gender
select avg(salary) from employee_payroll where gender='F' group by gender

select min(salary) from employee_payroll where gender='M' group by gender
select min(salary) from employee_payroll where gender='F' group by gender

select max(salary) from employee_payroll where gender='M' group by gender
select max(salary) from employee_payroll where gender='F' group by gender

select count(gender) from employee_payroll where gender='M' group by gender
select count(gender) from employee_payroll where gender='F' group by gender






