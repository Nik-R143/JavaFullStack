create database GSM;
 show databases;
 
-- drop database GSMCOE;
-- show databases;

use GSM;

create table CSE(
S_id int(6),
S_name varchar(50),
S_email varchar(50),
S_phno int(10)
);

create table MSE(
S_id int(6),
S_name varchar(50),
S_email varchar(50),
S_phno int(10)
);

create table ESE(
S_id int(6),
S_name varchar(50),
S_email varchar(50),
S_phno int(10)
);

select * from CSE;
desc CSE;

insert into CSE values(101,'Nikita','raghuwanshinikita7@gmail.com',771995),
(102,'JV','raghuwanshinikita7@gmail.com',7524),
(103,'SY','raghuwanshinikita7@gmail.com',77124),
(104,'HS','raghuwanshinikita7@gmail.com',77524),
(105,'PW','raghuwanshinikita7@gmail.com',77124),
(106,'RK','raghuwanshinikita7@gmail.com',7524),
(107,'SR','raghuwanshinikita7@gmail.com',7714),
(108,'MR','raghuwanshinikita7@gmail.com',7524),
(109,'MMR','raghuwanshinikita7@gmail.com',774),
(110,'SD','raghuwanshinikita7@gmail.com',77524);

select * from CSE;

select S_name, S_email from CSE;

select * from MSE;
desc MSE;

insert into MSE values(101,'RK','raghuwanshinikita7@gmail.com',771995),
(102,'JV','raghuwanshinikita7@gmail.com',7524),
(103,'SY','raghuwanshinikita7@gmail.com',77124),
(104,'HS','raghuwanshinikita7@gmail.com',77524),
(105,'PW','raghuwanshinikita7@gmail.com',77124),
(106,'NK','raghuwanshinikita7@gmail.com',7524),
(107,'SR','raghuwanshinikita7@gmail.com',7714),
(108,'MR','raghuwanshinikita7@gmail.com',7524),
(109,'MMR','raghuwanshinikita7@gmail.com',774),
(110,'SD','raghuwanshinikita7@gmail.com',77524);

select * from MSE;

select * from ESE;

insert into ESE values(5,'Vaishnavi','vaishnavi@123',98818),
(6,'Rajput','rajput@123',98818),
(7,'VK','vk@123',70215),
(8,'SR','sr@123',15268),
(9,'SK','sk@123',8456),
(10,'AB','ab@123',1348),
(11,'SM','sm@123',56324),
(12,'JH','jh@123',15489),
(13,'LM','lm@123',65248),
(14,'SU','su@123',17364),
(15,'XZ','xz@123',93158);

select * from ESE;

select * from CSE;

alter table CSE add(S_Adhaar int(12));

desc CSE;

alter table ESE add(
  S_Address varchar(50),
  S_Postcode int(6)
);
desc ESE;

select * from ESE;

/*delete from ESE where S_name='Rajput';*/

alter table ESE drop column S_Postcode;

select * from ESE;

alter table ESE add (S_County varchar(10) default 'India' );

alter table ESE modify S_id int(50);

alter table ESE change S_id S_Roll int(10);

delete from ESE where S_Roll=11;

delete from ESE where S_Conty='India';

truncate table ESE;

delete from ESE;

update ESE set 	S_name='Snehal' where S_id=7;

select * from ESE;

drop table ESE;

update ESE set S_name='Nikita', S_email='nikita7@gmail.com' where S_id=8;

alter table ESE add S_Age int(10) default 17;

update ESE set S_Age =S_Age+1;


select S_name, S_email, S_phno from ESE where S_name='Vaishnavi';
savepoint A;

select S_Age, S_id from ESE where S_id=5;

select *from ESE where S_age=18 AND S_id=5;
savepoint B;
select *from ESE where S_age=18 && S_id=6;

select * from ESE where S_age=18 OR S_id=7;

select *from ESE where S_age=18 AND S_id=7 OR S_id=8;

select *from ESE where S_age=18 || S_id=8;

select * from ESE where S_id IN (5, 6, 7, 8);

select * from ESE where S_id=6 OR  S_id=7 OR S_id=8;

select * from ESE where S_id NOT IN (5, 6, 7, 8);
rollback to A;