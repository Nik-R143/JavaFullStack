create database test1;
use test1;
create table student(
s_id int(5),
s_name varchar(20),
s_email varchar(20),
s_mark int(2),
s_age int(2)
);
drop database test1;
insert into student values(101,"Pranita","pranita@gmail.com", 80,22),
(102,"Meera","Meera@gmail.com", 90,23),
(103,"Radha","radha@gmail.com",30,24),
(104,"Khushi","kushi@gmail.com", 55,22),
(105,"Rani","rani@gmail.com", 55,24),
(106,"Nikita","nikita@gmail.com", 65,21),
(107,"Ram","ram@gmail.com", 90,18),
(108,"Pranav","pranav@gmail.com",40,19);

select * from student;
select s_email ,s_mark, s_age from student where s_id IN (104,106);
select s_email ,s_mark, s_age from student where s_name='Rani' or 'Nikita';
select * from student where s_id Not IN(107);
select * from student where s_id <>107;
select * from student where s_id != 107;
select * from student where s_mark>=60 && s_age<21;
select * from student where s_mark>=60 having s_age<21;
select * from student where s_mark<75 || s_age>20;
select * from student where s_mark<75 OR s_age>=20;
select * from student where s_id in (102,104);
select * from student where s_id not in (102,104);