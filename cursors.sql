---Cursors---
============
--Cursors--- memory pointers
--they are used for row by row processing of data
---Implicit ---cursor -statement --no of rows/open/closed
select * from emp
Explicit--- 
1)declare----it is done using a sql statementn
2)open--opened for storing data retrieved from the resultset
3)fetch---- when the curosr is opened, rows can be fetched from a 
--cursor  one by one or in a block to do data manipulation
processing
4)  close ----the cursor must be closed after processing
5)deallocate--- deallocation to delete the cursor definition(declared) 
--and the system resources associated are also deallocated


select * from employees
where city ='London'
When to use a cursor
---loops----while, for etc

declare 
cursorname cursor (local\global) 
[fwdonly\scroll\static\keyset\dynamic\readonly
\fast fwd\scroll_locks\optimistic]
for select \update[of columnnaem/col names] 

update----- updateable cursor
curor

@@fetch_status-----0-------there are still rows to be fetched
		      -----1------>row fetch complete/no more rows

declare 
@v_empid int,
@v_firstname varchar(20),
@v_lastname varchar(20)
declare empcur cursor 
for
select employeeid,firstname,lastname from employees;
open empcur
fetch next from empcur into @v_empid,@v_firstname,@v_lastname;
print  'EmployeeID --- Firstname ---- Lastname'
while @@fetch_status=0
begin
print cast(@v_empid as varchar(3)) +'---'+ @v_firstname  + '----'+ @v_lastname
fetch next from empcur into @v_empid,@V_firstname,@v_lastname
end
close empcur
deallocate empcur