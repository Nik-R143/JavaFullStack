create database Engg;
use Engg;

create table CSE(S_Id integer, S_Name varchar(10), S_Phone varchar(10));
insert into CSE values(1,'Nikita','753269841');
insert into CSE values(2,'Snehal','885236975');
insert into CSE values(3,'Arti','745369821');
insert into CSE values(4,'Aparna','963258741');
insert into CSE values(5,'Siddhi','785369821');
create table ESE(S_Id integer, S_Loc varchar(20), S_Mark integer);
insert into ESE values(1,'Pune', 80),(2,'Mumbai',90),(3,'Nagpur',70),(4,'Pune',60),(5,'Mumbai',85);
select * from CSE;
select * from ESE;

select * from CSE CROSS JOIN ESE;
select * from CSE JOIN ESE;

select * from CSE INNER JOIN ESE where CSE.S_ID=ESE.S_ID;

create table MSE(S_ID integer, S_Age integer);
insert into MSE values(1,21),(2,22),(3,23),(4,24);
create table civil(S_Roll varchar(10), S_name varchar(10));
insert into civil values(1,'R'),(2,'N'),(3,'D'),(4,'Y');
select * from CSE NATURAL JOIN  ESE;
select * from MSE NATURAL JOIN civil;


create table S1(s1_ID integer, s1_name varchar(10));
insert into S1 values(1,'Nikki'),(2,'Vaishnavi'),(3,'Jayanth'),(4,'Roh'),(5,'SRK');
create table S2(s1_ID integer, s2_name varchar(10));
insert into S2 values(1,'Snehal'),(2,'Aarti'),(3,'Aparna'),(4,'Mansi'),(5,'SRK');

select * from S1 left outer join S2 on S1.s1_ID=S2.s1_ID;

select * from boys left outer join men on boys.s_place=men.s_place;

drop table S2;
select * from S1 right outer join S2 on S1.s1_ID=S2.s1_ID;

select * from S2;

#select * from S1 full outer join S2 on S1.s1_ID=S2.s1_ID;