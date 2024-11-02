USE hadobo;

CREATE TABLE STUDENT (
    StudentId INTEGER,
    Name CHAR(30),
    Age CHAR(2),
    Gender CHAR(10)
);

CREATE TABLE COURSE (
    CourseId INTEGER,
    Title CHAR(30),
    Facilitator CHAR(20),
    NoOfStudents INT
);

CREATE TABLE GRADE (
    CourseId INTEGER,
    StudentId INTEGER,
    Score INTEGER
);
