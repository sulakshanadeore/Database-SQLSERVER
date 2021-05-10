---DDL----- 
---define objects in the database tables,views,indexes, etc
use master
go
create database trialMphasis189
go
use trialMphasis189
go
--int,bigint,numeric(18,0)
--numeric(5,2)
--999.99

--char & varchar
---fixed   & variable length char string
----char(20)----- 10--10 reaclaim not possible by the memory
----varchar(20)----10--10 reclaim by memory
------varchar2----recent---- varchar

create table emp
(
empno int constraint pk1 primary key,
ename varchar(30),
aadharno varchar(12) constraint a_nonull not null
constraint U_ad unique)

sp_help emp

sp_help dept

insert into emp values (1,'Akshay','333213678124')
insert into emp values (2,'Akshay','   ')
insert into emp values (4,'Akshay','')

insert into emp values (3,'Akshay',NULL)
------Can one value of null type be 
--allowed in pk column---- False

insert into dept values(10,'PURCHASE','CHENNAI',2);

select * from Dept
select * from emp

delete from emp
where empno=2;


create table sales
(turnoverAmt money,
v_deptno int constraint c1 foreign key references dept(deptno)) 

insert into sales values (2424234.23,10)
select * from sales


create table books
(bookid int primary key,
bookname varchar(20),
booktype varchar(20) check
 (booktype in('Fiction','Science','Hobby','Other'))
 )

 insert into books values(1,'HarryPotter','Fiction')
 insert into books values(2,'World Geography','Other')


 sp_help books


