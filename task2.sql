-- 1)Create a database name - “Football”.
create database Football

-- 2)Create a table name - “Football Venue”.
create table Football_Venue(
venue_id number(5),
venue_name varchar2(20) ,
city_id number(8),
capacity number(8) 
);

-- 3)Insert 10 details in the “Football Venue” table  -
insert into Football_Venue values(101,"South Africa",5001,1001);
insert into Football_Venue values(102,"France",5002,1002);
insert into Football_Venue values(103,"Italy",5003,1003);
insert into Football_Venue values(104,"India",5004,1004);
insert into Football_Venue values(105,"Australia",5005,1005);
insert into Football_Venue values(106,"Germany",5006,1006);
insert into Football_Venue values(107,"Russia",5007,1007);
insert into Football_Venue values(108,"America",5008,1008);
insert into Football_Venue values(109,"Switzerland",5009,1009);
insert into Football_Venue values(110,"Mexico",5010,1010);

-- 4)Count the number of venues of the football world cup
select count(venue_name)  from Football_Venue;

-- 5)List all the venue names and capacities in the format of “Location” and “Volume”.

select  venue_name as Location , capacity as Volume from Football_Venue;

-- 6) Delete all the details where venue_name is equal to “Australia”
delete from  Football_Venue where venue_name="Australia";
