CREATE DATABASE CollegePortalDB

USE CollegePortalDB


--Data type

--int
--decimal(a,b)
--varchar(max), varchar(11)
--bit (0,1)
--DateTime

CREATE TABLE Department(
	DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE Student (
	StudentId INT IDENTITY(1,1) NOT NULL,
	StudentIDCardNumber VARCHAR(20) NOT NULL UNIQUE,
	Name VARCHAR(100) NOT NULL UNIQUE,
	Gender VARCHAR(1) NOT NULL,
	Score decimal(5,2) NOT NULL,
	DepartmentId INT
	PRIMARY KEY (StudentId)
	Foreign Key (DepartmentId) References Department(DepartmentId)
);

INSERT INTO Department (Name)
VALUES
('IT');

select * From Department

INSERT INTO Student (StudentIDCardNumber, Name, Gender, Score, DepartmentId)
values
('Y14IT110', 'Sneha', 'F', 22.45, 1);


select * From Student	


UPDATE Student
SET DepartmentId = 5
WHERE StudentId = 4;



truncate table student


truncate table department


select * from Student

select * from Department

delete from Department
where DepartmentId in (10,8)


UPDATE Department
SET Name = ''
WHERE name = 'CSE'


C, U, De, I, T,Drop

drop table Student

drop table Department




--DDL
--Create, Drop, Trunate, alter


--DML
--Delete , update, insert, select


Alter table student
ADD Grade varchar(1) Not null default ('A')

select * from student


alter table student
RENAME  column Grade to Grades



CREATE VIEW FemaleStudents
AS  
select * 
from student
WHERE Gender = 'F'


select * from FemaleStudents


use master

drop DATABASE CollegePortalDB