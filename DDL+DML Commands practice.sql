create DATABASE HRPORTAL
use HRPORTAL
CREATE TABLE EMPDETAILS(
empid int,
Name varchar(30),
Gender varchar(1)
)

insert into EMPDETAILS
values(2,'Malli','M')

select * from EMPDETAILS

update EMPDETAILS
set name='Arjun'
where name='Malli'

alter table empdetails
add salary int

update EMPDETAILS
set salary=200000
where name='Arjun'
 
 delete from EMPDETAILS
 where salary =50000

 truncate table empdetails

 drop table EMPDETAILS

 alter table empdetails
 alter column shift varchar(20)
 
 update  EMPDETAILS
 set salary=200000,
 shift='Day'
 where name='Malli'

 select * from EMPDETAILS

 insert into EMPDETAILS
 values(1,'Mahii','F',60000,'Day')

 update Empdetails
 set empid=2
 where name='Mahii'

 alter table EMPDetails
 drop column shift

 delete from empdetails
 where empid=2

 truncate table empdetails
 select * from empdetails

 drop database hrportal

