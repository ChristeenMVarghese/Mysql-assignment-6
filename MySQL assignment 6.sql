create database Country;
use Country;
Create table Country(Id int, Country_Name varchar(10),Population_Area Int);
drop table Country;
Create table Country(Id int primary key, Country_Name varchar(10),Population_Area_in_km Int);
Drop table Country;
Create table Country(Id int primary key, Country_Name varchar(10),Population Int,Area Int);
create table Persons(Id int primary key,Fname varchar(10),Lname varchar(10),Population_Rating Int,
Country_id Varchar(5),Country_name varchar(10));

insert into Country(Id,Country_Name,Population,Area) 
values('02','USA','2000000','100000');
insert into Country(Id,Country_Name,Population,Area) 
values('03','Canada','1000000','82000');
insert into Country(Id,Country_Name,Population,Area) 
values('04','UK','10000000','72000');
insert into Country(Id,Country_Name,Population,Area) 
values('05','Bangladesh','2000000','72');
insert into Country(Id,Country_Name,Population,Area) 
values('06','India','25000000','66000');
insert into Country(Id,Country_Name,Population,Area) 
values('07','Austraila','300000','72000');
insert into Country(Id,Country_Name,Population,Area) 
values('08','China','22000000','120000');
insert into Country(Id,Country_Name,Population,Area) 
values('09','Russia','800000','200000');
insert into Country(Id,Country_Name,Population,Area) 
values('10','Brazil','1000000','180000');
select*from Country;
update Country set Area = 9800 where Id = 5;
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('01','Kewin','Robin','4.8','USA','USA');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('02','Andrews','Richald','3.8','USA','USA');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('03','Annie','Brickwood','4.9','UK','Uk');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('04','Anand','Ravi','4','IND','India');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('05','Ohio','Philp','4','AUS','Australia');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('06','Ram','Chandran','4.1','IND','');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('07','Rahim','Ali','3.9','BAN','Bangladesh');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('08','Aiyshu','bin','3.8','BAN','Bangladesh');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('09','Nico','Robin','4.2','BRA','Brazil');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('10','Radha','Richards','4.8','CAN','Canada');
insert into Country(Id,Country_Name,Population,Area) 
values('11','Argentina','2200000','223000');
Select distinct Country_name from Persons;
Select Fname from persons where Population_rating >4.5;
Select Country_Name from Country where Population >1000000;
Select Fname from persons where Country_name = '';
use country;
select* from persons where Country_name IN ('USA','UK','Canada') ;
select*from persons where Country_name = Null;
select*from persons where Country_name NOt In ('India','Australia');
Select*from Country where population between 500000 and 2000000;
Select*from  Country where Country_name not like 'C%';

Select Fname from persons where Country_name not IN ('India' and  'Austraila');
Select all *from persons;
use country;
select country_name from Country limit 3; 
select concat(Fname,Lname) from persons as full_name;
select count( distinct Country_name) from persons;
select*from persons;
select max(population) from Country;
select min(population) from Country;
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('11','Remesh',null,'4.6','IND','serbia');
insert into Persons(Id,Fname,Lname,Population_rating,
Country_id,Country_name) 
values('12','sina',null,'4.1','IND','UK');
select*from Persons;
select count(Lname) from Persons;
select population from Country limit 3;
select*from Persons order by Population_rating Asc;
select*from Persons order by Population_rating Desc; 
select*from Country random  limit 3;
select SUM(Population_rating) from persons;
Select concat(Population,Country_name) and  Sum( Population)  Country_name;
select*from country;
select*from persons;
select persons.Country_name,persons.Fname,country.Population from Country 
left join Persons on Country.Country_Name = Persons.Country_name 
and population=200000;
Select country_name and count(Fname) from Persons;
use country;
select persons.Country_name,persons.Fname,country.Population from Country 
left join Persons on Country.Country_Name = Persons.Country_name;
select*from  country;
select persons.Country_name,persons.
Lname,country.Id from Country 
inner join Persons on Country.Country_Name = Persons.Country_name;
select persons.Population_rating,persons.Fname,country.Population from Country 
right join Persons on Country.Country_Name = Persons.Country_name;
select distinct persons.Country_name from persons
 union select distinct Country.Country_name from Country ;
 select persons.Country_name from persons
 union select Country.Country_name from Country;
 select distinct persons.Country_name from persons
 union all select distinct Country.Country_name from Country;
 select round(Population_rating) from persons;