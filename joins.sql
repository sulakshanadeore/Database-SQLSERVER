use northwind
go

select * from employees
select e.employeeid,e.lastname,e.firstname,e.title,e.reportsto,
m.lastname,m.firstname,m.reportsto,m.title from employees e, employees m
where e.reportsto=m.employeeid


-----Joins----- 
------Multiple tables ----data scattered
----so we need join
---join types and made with a condition
---Equi Joins & Non Equi
----Inner Joins/Natural Joins
----Self Joins
----Cartesian join (Multiplication)
----Outer Joins=== 
-----left outer join, right outer join and full outer joins.
----full outer join keyword was not supported 
----equi join with union on the queries(full join)
----*************************ANSI syntax********************

----Equi Join(=) in the condition
use hr
go
select * from Emp
select * from dept

select * from emp,dept

select * from emp,dept
where emp.deptno=dept.deptno

----find diff between equi and inner join

select e.empno,ename,e.deptno,dname,loc  from emp e, dept d
where e.deptno=d.deptno



select e.empno,ename,e.deptno,dname,loc  
from emp e inner join dept d
on e.deptno=d.deptno
------output column may/may not repeated and condition is must


--select e.empno,ename,e.deptno,dname,loc  
--from emp e natural join dept d
-----columns not repeated in ouptut and condition not needed

------------------------------------------
select * from dept
select * from emp


---nonqeui joins---cartesian join- rows from both tables  -
select e.empno,ename,e.deptno,dname,loc  from emp e, dept d
where e.deptno!=d.deptno
---------------------------------
---outer joins---forceful selection
select * from emp
select * from dept
--show me depts that do not have employees in them

      LHS---------------RHS
select empno,ename,d.deptno,dname,loc
  from dept d left outer join emp e --more preference over rhs(emp)
 on e.deptno=d.deptno

 ----forcefully selct data of emp
 select empno,ename,d.deptno,dname,loc
  from emp e left outer join dept d  --more preference over rhs(emp)
 on e.deptno=d.deptno




        LHS----- RHS
 select empno,ename,d.deptno,dname,loc
  from dept d right outer join emp e --more preference over rhs(emp)
 on e.deptno=d.deptno

 select empno,ename,d.deptno,dname,loc
  from emp e full outer join dept d --more preference over rhs(emp)
 on e.deptno=d.deptno
 
 select * from emp
 
select empdata.empno,empdata.ename,empdata.managerid,mgrdata.ename
 from emp empdata, emp mgrdata
 where empdata.managerid!=mgrdata.empno




