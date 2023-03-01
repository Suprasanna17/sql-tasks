-- 1)Create a database name - “Employee”.
create database Employee

--  2)Create a table name - “Employee Details”.
-- creating table named EmployeeDetails
create table Employee_Details (
Emp_id number(7),
Emp_name varchar2(20),
Job_name varchar2(20),
Manager_id number(7),
Hire_date varchar2(20),
Salary number(9),
Dep_id number(5) 
);

--3)Insert 10 details in the “Employee Details” table
-- inserting values into table 
insert into Employee_Details  values(2101,"Lalitha","Engineer",1201,"07-11-2003",65200,1001);
insert into Employee_Details  values(2102,"Saran","Doctor",1202,"20-09-2013",66540,1002);
insert into Employee_Details  values(2103,"Ram","Lecturer",1203,"02-02-2002",53640,1003);
insert into Employee_Details  values(2104,"Srivalli","Doctor",1204,"03-03-2003",46000,1004);
insert into Employee_Details  values(2105,"Vidhatri","Professor",1205,"04-04-2004",45000,1005);
insert into Employee_Details  values(2106,"Neeraj","software developer",1206,"05-05-2005",36500,1006);
insert into Employee_Details  values(2107,"Akhil","Businessman",1207,"22-01-2008",45600,1007);
insert into Employee_Details  values(2108,"Aadhya","Speaker",1208,"07-03-2002",25000,1008);
insert into Employee_Details  values(2109,"Raj","Artist",1209,"07-09-2005",23000,1009);
insert into Employee_Details  values(2110,"Jay","Manager",1210,"12-10-2012",55000,1010);

-- 4)Find the salaries of all the employees from the “Employee Details” table.
-- select gives the data of the table from the table EmployeeDetails
select Salary from Employee_Details

-- 5)Find the unique designations of the employees from the table
-- distinct is used to get the distinct values
select distinct Job_name from Employee_Details;

-- 6)Change the salary where the emp_name is “Raj”.
-- updating the salary of employee Raj
update Employee_Details set Salary= 100000 where Emp_name ="Raj";
