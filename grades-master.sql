DROP TABLE IF EXISTS classesComponents;
DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS users;


-- userLoginPref == (f, g, m)

CREATE TABLE users (
  userID INT NOT NULL PRIMARY KEY,
  userFirst char(15) NOT NULL,
  userLast char(15) NOT NULL,
  userUsername varchar(15) NOT NULL,
  userPassword varchar(20) NOT NULL,
  userEmail varchar(30) NOT NULL,
  userFacebook text,
  userGoogle text,
  userLoginPref char(1) NOT NULL,
  userSchool text,
  userState CHAR(2) NOT NULL,
  userCity CHAR(20)
);


-- userID is the owner/teacher of the class
-- classStudentCount is the number of students in the class, can be automatically updated when there is a change to the students table
-- classComponentCompleted == (y, n) based on the class components not equating to 100% in weight

CREATE TABLE classes (
  userID INT NOT NULL FOREIGN KEY,
  classID INT NOT NULL PRIMARY KEY,
  className varchar(20) NOT NULL,
  classStudentCount INT NOT NULL,
  classComponentCompleted CHAR(1) NOT NULL
);


CREATE TABLE students (
  classID INT NOT NULL FOREIGN KEY,
  studentID INT NOT NULL PRIMARY KEY,
  studentFirst char(15) NOT NULL,
  studentLast char(15) NOT NULL,
  studentBirth DATE,
  studentAvg FLOAT
);


-- gradeRaw can be inputted as a fraction and turned into a float

CREATE TABLE grades (
  studentID INT NOT NULL FOREIGN KEY,
  gradeID INT NOT NULL PRIMARY KEY,
  gradeName CHAR(20) NOT NULL,
  gradeRaw FLOAT
);


-- classComponentWeight should be in percentage

CREATE TABLE classesComponents (
  classID INT NOT NULL FOREIGN KEY,
  classComponentID INT NOT NULL PRIMARY KEY,
  classComponentName char(20) NOT NULL,
  classComponentWeight INT NOT NULL
);
