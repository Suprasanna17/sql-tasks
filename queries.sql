 create table workertable(
 Worker_id number(5) not null primary key,
 First_name varchar(30) not null,
 Last_name varchar(30) not null,
 salary number(8) not null ,
 Joining_date date not null,
 Department varchar(30) not null
 )

 insert into workertable values (001,"Monika","Arora",100000,"2014-02-20 ","HR");
 insert into workertable values (002,"Niharika","Verma",80000,"2014-06-11 ","Admin");
 insert into workertable values (003,"Vishal","Singhal",300000,"2014-02-20 ","HR");
 insert into workertable values (004,"Amitabh","Singh",500000,"2014-02-20 ","Admin");
 insert into workertable values (005,"Vivek","Bhati",500000,"2014-06-11 ","Admin");
 insert into workertable values (006,"Vipul","Diwan",200000,"2014-06-11 ","Account");
 insert into workertable values (007,"Satish","Kumar",75000,"2014-01-20 ","Account");
 insert into workertable values (008,"Geetika","Chauhan",90000,"2014-04-11 ","Admin");
 
 --TASK-1

 --1) Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
    select First_name as  WORKER_NAME from workertable;

 -- 2)Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
    select instr(First_name, BINARY'a') from workertable where First_name = 'Amitabh';

 --3)Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
    select replace(First_name, 'a', 'A') from workertable;

 --4)Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
    select * from workertable order by First_name ASC;

 --5)Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
    select * from workertable order by First_name ASC , Department DESC ;

 --6)Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from the Worker table.
    select * from workertable where First_name in ( 'Vipul','Satish');

 --7)Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”
    select * from workertable where Department like 'Admin%';
 
  --8)Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’
    select * from workertable where  First_name like '%a%' ;


  --TASK-2

 --9)Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000. 
    select * from  workertable where salary  between 100000 and 500000;

 --10)Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
    select * from workertable where First_name like '___h';

 --11)Write an SQL query to print details of the Workers who have joined in Feb’2014.
    Select * from workertable where Joining_date like '2014-02%';

 --12)Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
    select  First_name , salary from workertable where salary between 50000 and 100000;





create table Salesman(
salesman_id number(4)  primary key,
name varchar2(20),
city varchar2(20),
commisssion number(5));

insert into Salesman values(5001,'James Hoog','NewYork',0.15);
insert into Salesman values(5002,'Nail Knite','Paris',0.13);
insert into Salesman values(5005,'PitAlex','London',0.11);
insert into Salesman values(5006,'McLyon','Paris',0.14);
insert into Salesman values(5007,'Paul  Adam','Rome',0.13);
insert into Salesman values(5003,'Lauson Hen','SanJose',0.12);

create table Customer(
    Customer_id number(4),
    cust_name varchar2(20),
    city varchar2(20),
    grade number(3),
    salesman_id number(4));


insert into Customer values(3002,'Nick Rimando','New York',100,5001);
insert into Customer values(3007,'Brad Davis','New York',200,5001);
insert into Customer values(3005,'Graham Zusi','California',200,5002); 
insert into Customer values(3008,'Julian Green','London',300,5002);   
insert into Customer values(3004,'Fabian Johnson','Paris',300,5006);
insert into Customer values(3009,'Geoff  Cameron','Berlin',100,5003);
insert into Customer values(3003,'Jozy Altidor','Moscow',200,5007);
insert into Customer values(3001,'Brad  Guzan','London',null,5005);

  --TASK-3 

--13)Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name, and city
select name,cust_name,salesman.city from salesman,customer where salesman.city=customer.city;

--14)Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, and commission.
select cust_name,customer.city,name,commission from customer,salesman where salesman.salesman_id=customer.salesman_id;

--15)Write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, and commission.
select cust_name,customer.city,name,commission from salesman,customer where commission>.12 and salesman.salesman_id=customer.salesman_id;
