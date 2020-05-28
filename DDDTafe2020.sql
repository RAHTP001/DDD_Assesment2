--Database Creation
CREATE DATABASE DDDTafe2020;

--Creating Table Student

USE DDDTafe2020
CREATE TABLE Student (
    StudentID int NOT NULL IDENTITY(1,1)  PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    BirthDate Date,
	Gender Varchar(10),
	Address Varchar(255),
	);

--Creating Table Course

USE DDDTafe2020
  CREATE TABLE Course (
    CourseCode int NOT NULL IDENTITY(1,1)  PRIMARY KEY,
    CourseTitle varchar(255) NOT NULL,
	CourseType Varchar(255)
    );

--Creating Table Enrollment

USE DDDTafe2020
   CREATE TABLE Enrolment(
   EnrolmentID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
   CourseCode Int NOT NULL,
   StudentID Int NOT NULL,
   UnitCode VARCHAR(10)
   CONSTRAINT student_fk FOREIGN KEY (studentID) REFERENCES student(studentID),
   CONSTRAINT Course_fk FOREIGN KEY (CourseCode) REFERENCES Course(CourseCode)
 );

 --Populating Course and Enrolment Table

 USE DDDTafe2020
INSERT INTO Course(CourseTitle,CourseType )
VALUES('DatabaseDesign','Parttime'),
      ('Management','Fulltime'),
      ('SQL','Online'),
	  ('Python', 'Online')

USE DDDTafe2020
INSERT INTO Enrolment(CourseCode,StudentID, UnitCode )
VALUES(1,1,3),
      (2,2,5),
      (3,3,2),
	  (4,4,5),
	  (1,5,3),
	  (2,6,3),
	  (3,7,3),
	  (4,8,3);

--Incert One row in to Table

USE DDDTafe2020
INSERT INTO Student( LastName, FirstName, birthdate, Gender, Address)
VALUES( 'Marne','Rahul','2020/01/01','M','41 George St');

--Incert multiple row in to Table

USE DDDTafe2020
INSERT INTO Student(FirstName, LastName,birthdate,Gender, Address)
VALUES('George','Sam','2020/01/02','M','42 George St'),
      ('Sally','Bush','2020/01/03','F','43 George St'),
      ('Scott','Morris','2020/01/04','M','44 George St'),
	  ('Eugene','Hang','2020/01/20','F','45 George St'),
	  ('Christy','Zhau','2020/01/28','F','46 George St'),
	  ('Elizabeth','Johanson','2020/02/25','F','47 George St'),
	  ('Janet','Alvares','2020/03/20','F','48 George St'),
	  ('Russel','Xie','2020/05/20','M','49 George St');



--Update of an existing record.

USE DDDTafe2020
UPDATE Student
SET FirstName = 'Rustom', Address = '499 George St'
WHERE StudentID = 9;

--Deletion of an existing record

USE DDDTafe2020
DELETE FROM Student
WHERE StudentID = 9;

--Reading data from one table

USE DDDTafe2020
SELECT *
FROM Student;

--Reading data from Two table

USE DDDTafe2020
SELECT *
FROM Enrolment AS E
INNER JOIN Student AS S
ON E.StudentID = S.StudentID

--Reading data from Three table

USE DDDTafe2020
SELECT *
FROM Enrolment AS E
INNER JOIN Student AS S
ON E.StudentID = S.StudentID
INNER JOIN Course AS C
ON C.CourseCode =E.CourseCode




	  



	