-- 1. Create and Drop Database
create database academics;
show databases;
drop database academics;

-- 2. Show all databases in the system
show databases;

-- 3. Create Table for database
create database academics;
use academics;
create table faculty(facultyId int not null,
					facultyName varchar(20) not null,
                    subjectName varchar(50) not null,
                    salary int not null,
                    yearsOfExperience int not null,
                    researchPapersPublished int,
                    primary key (facultyId));

-- 4. Use of select to create a new table
create table temp_Table as select facultyId,facultyName,yearsOfExperience from faculty;
desc temp_Table;

-- 5. Drop Table
drop table temp_Table;

-- 6. Checking schema of tables
desc faculty;

-- 7. Show all tables from database
show tables;

-- 8. Insert 5 to 10 rows 
insert into faculty values(1, "Chirag", "Algorithms", 50000, 4, 3);
insert into faculty values(2, "Anurag", "Machine Learning", 70000, 3, 4);
insert into faculty values(3, "Parag", "DBMS", 100000, 8, 5);
insert into faculty values(4, "Ruturag", "Statistics", 75000, 6, 2);
insert into faculty values(5, "Abhirag", "Compilers", 40000, 2, 1);
insert into faculty values(6, "Mirag", "Artificial Intelligence", 60000, 2, 2);
insert into faculty values(7, "Surag", "Python Programming", 40000, 3, null);
insert into faculty values(8, "Balrag", "Algorithms", 70000, 7, 4);

-- 9. Simple select statement usage
select * from faculty;
select facultyName, salary from faculty;
select F.facultyName, F.yearsOfExperience, F.researchPapersPublished from faculty F;

-- 10. Select statement using Relational and Logical operations
select F.facultyName, F.salary from faculty F where F.salary >= 70000;
select * from faculty F where F.salary > 60000 AND F.yearsOfExperience > 5;

-- 11. Simple subquery using select statement
select facultyId, facultyName from faculty where facultyId in (select facultyId from faculty where researchPapersPublished > 2);