CREATE TABLE student (

 id INT (10),
        name VARCHAR(30),
         course VARCHAR(30),
         subject VARCHAR(20),
         marks_list int(30),
         phone_number VARCHAR(15),
       father_name VARCHAR(30));
       DESC student;
       SELECT*FROM student;
       INSERT into student VALUES(1, 'John Doe', 'BSc', 'Maths', '85,', '1234567890',' Doe');
       SELECT*FROM student;
       
       INSERT into student VALUES(1, 'Jane Smith', 'BA', 'English', '80', '9876543210','Mr. Smith');
       SELECT*FROM student;
       INSERT INTO student VALUES(3, 'Bob Johnson', 'BCom', 'Accounting', '70','5551234567','Johnson');
       insert into student VALUES(4, 'Alice Brown', 'BSc', 'Biology', '88', '9012345678','Brown');
INSERT INTO student VALUES(5, 'Mike Davis', 'BA', 'History', '35', '1112223333',  ' Davis');
insert INTO student VALUES(6, 'Emily Chen', 'BCom', 'Finance', '88', '4445556666', 'Chen');
INSERT into student VALUES(7, 'David Lee', 'BSc', 'Chemistry', '90', '7778889999', ' Lee');
insert into student VALUES(8, 'Sophia Patel', 'BA', 'Psychology', '92', '3334445555',  ' Patel');
insert  into student VALUES(9, 'Oliver Kim', 'BCom', 'Marketing', '20', '6667778888',  ' Kim');
insert into student VALUES(10, 'Ava Wong', 'BSc', 'Physics', '90', '9990001111',  ' Wong');
insert into student VALUES(11, 'Isabella Martin', 'BA', 'Sociology', '30', '2223334444',' Martin'); 
insert into student VALUES(12, 'Jackson Hall', 'BCom', 'Management', '48', '8889990000',  ' Hall');
insert into student VALUES(14, 'Mia Garcia', 'BSc', 'EnvironmentalScience', '50', '5556667777', 'Garcia');
insert into student VALUES(13, 'Alexander Taylor', 'BA', 'Philosophy', '10', '1112223333',  'Mr. Taylor');
SELECT*from student;
insert into student VALUES(15, 'Charlotte White', 'BCom', 'Human Resources', '90', '4445556666',  'Mr. White');
INSERT into student VALUES(16, 'Benjamin Brooks', 'BSc', 'Computer Science', '85', '7778889999',  'Mr. Brooks');
INSERT into student VALUES(18, 'Abigail Lewis', 'BA', 'Economics', '75', '9990001111',  'Mr. Lewis');
INSERT into student VALUES(17, 'Caleb', 'BCom', 'Business', '95', '3334445555', 'Walker');
insert into student VALUES(19, 'Harper Scott', 'BSc', 'Mathematics', '90', '6667778888', 'Mr. Scott');
INSERT into student VALUES(20, 'Ethan Russell', 'BA', 'English', '85', '2223334444',  'Mr. Russell');
SELECT *from student;
insert into student VALUES (21, 'Lily Tran', 'BCom', 'Accounting', '75', '8889990000','Mr. Tran');

SELECT *from student;
SELECT name FROM student;
SELECT name, course,marks_list from student;
DELETE from student where name='jane smith';
SELECT*from student;
alter Table student name to students;
#alter means add the a new values and columens#
alter Table student(addres VARCHAR(10));
#update the name and values #
UPDATE student
SET Name='Juan';
SELECT*FROM student;
#agrrgation function#
SELECT SUM(marks_list)
FROM student;
SELECT COUNT(NAME)
FROM student;
SELECT MAX(marks_list)
FROM student;
SELECT MIN(marks_list)
FROM student;
SELECT AVG(marks_list)
FROM student;
##
SELECT * FROM student
WHERE marks_list BETWEEN 50 AND 90;