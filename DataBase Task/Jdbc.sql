create database edubridge1;
show databases;
use edubridge1;
create table student(
s_id int(6),
s_name varchar(50),
s_email varchar(50)
);

insert into student values
(101,'Nikita','raghuwanshinikita7@gmail.com'),
(102,'Snehal','snehal@gmail.com'),
(103,'Swapnali','swapnali@gmail.com');	

select * from student;

create database crud;
show databases;

use crud;

CREATE TABLE `user` (
	`sl_no` INT(5) NULL DEFAULT NULL,
	`name` VARCHAR(100) NULL DEFAULT NULL,
	`email` VARCHAR(100) NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;

insert into user values
(101,'siddhi','siddhi@gmail.com'),
(102,'pooja','pooja@gmail.com'),
(103,'neha','neha@gmail.com');

select * from user;










