CREATE TABLE branch1(
 branch_code VARCHAR2(50) primary key,
 branch VARCHAR(50),
 location VARCHAR(50),
 hod VARCHAR(50)
);
insert into branch1 VALUES('cs' ,'cse','billgates','sudharani'); 
insert into branch1 VALUES('AI' ,'AIML','ratantata','venkatesh'); 
insert into branch1 VALUES('DS' ,'DS','billgate','ramesh'); 
insert into branch1 VALUES('IT' ,'IT','billgate','suresh'); 
select *from branch1;
     
CREATE TABLE students(
 s_id number primary key,
 st_name varchar(50) not null,
 email varchar(50) not null,
 age number check(age >= 18 and age <= 25),
 b_code VARCHAR(50)  references branch1(branch_code)
 );
INSERT into students values(1,'alice','alice@gmail.com',19,'CS');
INSERT into students values(2,'bob','bob@gmail.com',21,'AI');
INSERT into students values(3,'ram','ram@gmail.com',20,'DS');
INSERT into students values(4,'ron','ron@gmail.com',25,'IT');

create table employee(
e_id number,
e_name varchar(50),
email VARCHAR(50),
age NUMBER ,
CONSTRAINT id_pk PRIMARY KEY(e_id),
CONSTRAINT mail_uq UNIQUE(email),
CONSTRAINT age_ck  check ( age >18)
);
select constraint_name , constraint_type
from user_constraints where table_name = 'EMPLOYEE';



-- Creating the student table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    enrollment_date DATE,
    branch VARCHAR(50),
    college VARCHAR(50),
    fee INT,
    email VARCHAR(100)
);

-- DROP TABLE student;
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
-- CSE, IoT, IT, AIML, DS, ECE, EEE
-- 05, 49, 12, 42, 44, 04, 02

-- Insert statements
INSERT INTO student VALUES (1, 'Alice', 20, '2022-08-15', 'CSE', 'AEC', 50000, 'alice@example.com');
INSERT INTO student VALUES (2, 'Bob', NULL, '2023-01-12', 'IT', 'ACET', 75000, NULL);
INSERT INTO student VALUES (3, 'Charlie', 22, NULL, 'AIML', 'ACOE', NULL, 'charlie@example.com');
INSERT INTO student VALUES (4, 'David', 19, '2023-05-20', NULL, 'AEC', 60000, 'david@example.com');
INSERT INTO student VALUES (5, 'Eva', NULL, '2022-09-01', 'DS', NULL, 55000, NULL);
INSERT INTO student VALUES (6, 'Frank', 21, NULL, 'IoT', 'ACET', NULL, 'frank@example.com');
INSERT INTO student VALUES (7, 'Grace', 18, '2023-07-15', 'ECE', NULL, 70000, 'grace@example.com');
INSERT INTO student VALUES (8, 'Hank', NULL, '2022-06-10', 'EEE', 'AEC', 65000, NULL);
INSERT INTO student VALUES (9, 'Ivy', 20, NULL, NULL, 'ACOE', NULL, 'ivy@example.com');
INSERT INTO student VALUES (10, 'Jack', 23, '2023-02-05', 'CSE', NULL, 85000, 'jack@example.com');

INSERT INTO student VALUES (11, 'Kate', 17, '2022-11-20', 'IT', 'ACET', 90000, 'kate@example.com');
INSERT INTO student VALUES (12, 'Leo', NULL, NULL, 'AIML', 'AEC', 45000, NULL);
INSERT INTO student VALUES (13, 'Mia', 24, '2023-03-18', 'DS', NULL, NULL, 'mia@example.com');
INSERT INTO student VALUES (14, 'Nina', 19, NULL, 'IoT', 'ACOE', 35000, NULL);
INSERT INTO student VALUES (15, 'Oscar', NULL, '2022-10-25', 'ECE', 'AEC', 50000, 'oscar@example.com');
INSERT INTO student VALUES (16, 'Paul', 20, NULL, 'EEE', 'ACET', NULL, 'paul@example.com');
INSERT INTO student VALUES (17, 'Quinn', 22, '2023-04-12', 'CSE', 'ACOE', 75000, NULL);
INSERT INTO student VALUES (18, 'Rachel', 18, NULL, 'IT', NULL, 60000, 'rachel@example.com');
INSERT INTO student VALUES (19, 'Sam', NULL, '2023-06-08', 'AIML', 'AEC', 40000, NULL);
INSERT INTO student VALUES (20, 'Tina', 21, NULL, 'DS', 'ACET', NULL, 'tina@example.com');

INSERT INTO student VALUES (21, 'Uma', 25, '2022-07-15', 'IoT', 'ACOE', 50000, 'uma@example.com');
INSERT INTO student VALUES (22, 'Victor', NULL, '2023-08-10', 'ECE', 'AEC', 70000, NULL);
INSERT INTO student VALUES (23, 'Wendy', 19, NULL, 'EEE', 'ACET', NULL, 'wendy@example.com');
INSERT INTO student VALUES (24, 'Xander', 23, '2022-09-20', NULL, 'ACOE', 60000, 'xander@example.com');
INSERT INTO student VALUES (25, 'Yara', NULL, NULL, 'CSE', NULL, 80000, NULL);
INSERT INTO student VALUES (26, 'Zane', 17, '2023-01-15', 'IT', 'AEC', NULL, 'zane@example.com');
INSERT INTO student VALUES (27, 'Aaron', 20, NULL, 'AIML', 'ACET', 30000, 'aaron@example.com');
INSERT INTO student VALUES (28, 'Bella', NULL, '2023-05-25', 'DS', 'ACOE', 55000, NULL);
INSERT INTO student VALUES (29, 'Caleb', 22, NULL, 'IoT', NULL, 75000, 'caleb@example.com');
INSERT INTO student VALUES (30, 'Diana', 18, '2023-04-18', 'ECE', 'AEC', NULL, 'diana@example.com');

INSERT INTO student VALUES (31, 'Ethan', NULL, '2022-12-15', 'EEE', 'ACET', 65000, NULL);
INSERT INTO student VALUES (32, 'Fiona', 21, NULL, NULL, 'ACOE', 45000, 'fiona@example.com');
INSERT INTO student VALUES (33, 'George', 24, '2023-02-28', 'CSE', 'AEC', NULL, NULL);
INSERT INTO student VALUES (34, 'Holly', 19, NULL, 'IT', 'ACET', 90000, 'holly@example.com');
INSERT INTO student VALUES (35, 'Ian', NULL, '2022-08-22', 'AIML', NULL, 50000, 'ian@example.com');
INSERT INTO student VALUES (36, 'Jill', 20, NULL, 'DS', 'ACOE', NULL, NULL);
INSERT INTO student VALUES (37, 'Karl', 23, '2023-06-12', 'IoT', 'AEC', 75000, 'karl@example.com');
INSERT INTO student VALUES (38, 'Lily', 18, NULL, 'ECE', 'ACET', 55000, NULL);
INSERT INTO student VALUES (39, 'Mark', NULL, '2022-10-10', 'EEE', NULL, NULL, 'mark@example.com');
INSERT INTO student VALUES (40, 'Nora', 22, NULL, 'CSE', 'ACOE', 80000, NULL);

INSERT INTO student VALUES (41, 'Olivia', 25, '2023-03-15', NULL, 'AEC', 60000, 'olivia@example.com');
INSERT INTO student VALUES (42, 'Patrick', NULL, NULL, 'IT', 'ACET', 45000, 'patrick@example.com');
INSERT INTO student VALUES (43, 'Queenie', 19, '2022-11-10', 'AIML', 'ACOE', NULL, NULL);
INSERT INTO student VALUES (44, 'Ray', 20, NULL, 'DS', 'AEC', 55000, 'ray@example.com');
INSERT INTO student VALUES (45, 'Sophia', NULL, '2023-05-18', 'IoT', NULL, NULL, 'sophia@example.com');
INSERT INTO student VALUES (46, 'Tom', 23, NULL, 'ECE', 'ACET', 90000, NULL);
INSERT INTO student VALUES (47, 'Ursula', 18, '2022-09-15', 'EEE', 'ACOE', 40000, NULL);
INSERT INTO student VALUES (48, 'Victor', NULL, NULL, 'CSE', NULL, 70000, 'victor@example.com');
INSERT INTO student VALUES (49, 'Willow', 21, '2023-08-22', 'IT', 'AEC', NULL, 'willow@example.com');
INSERT INTO student VALUES (50, 'Xena', 17, NULL, 'AIML', 'ACET', 30000, NULL);
select * from student
where branch = 'AIML' and college='ACOE';
select *from student 
where age =20;
select *from student where branch = 'CSE' or branch = 'AIML';
select *from student where fee > 40000;
select *from student 
where enrollment_date >TO_DATE('01-01-2022','DD-MM-YYYY') 
and branch = 'CSE' 
and age > '20'
and fee >=30000;
select * from student where age is NULL and email is  NULL;
drop table student;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    date_of_admission DATE,
    age INT,
    branch VARCHAR(20),
    college VARCHAR(20),
    gender VARCHAR(10),
    fee INT,
    email VARCHAR(100)
);
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(1, 'John Doe', '2023-08-01', 20, 'CSE', 'AEC', 'Male', 150000, 'john.doe@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(2, 'Jane Smith', NULL, 19, 'ECE', 'ACET', 'Female', 200000, 'jane.smith@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(3, 'Mike Johnson', '2024-01-15', 21, 'IT', 'ACOE', 'Male', NULL, 'mike.johnson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(4, 'Emily Davis', NULL, 18, NULL, 'AEC', 'Female', 120000, 'emily.davis@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(5, 'Chris Brown', '2022-06-10', NULL, 'EEE', NULL, 'Male', 180000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(6, 'Anna Taylor', '2023-09-12', 22, 'IoT', 'ACET', NULL, 140000, 'anna.taylor@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(7, 'James Wilson', NULL, NULL, 'MECH', 'AEC', 'Male', 220000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(8, 'Sophia Moore', '2024-03-01', 17, 'CSE', 'ACOE', 'Female', 170000, 'sophia.moore@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(9, 'Oliver Lee', '2023-07-20', 25, 'DS', 'AEC', NULL, NULL, 'oliver.lee@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(10, 'Isabella White', NULL, 23, 'AIML', 'ACET', 'Female', 230000, 'isabella.white@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(11, 'Liam Harris', '2023-05-14', 21, 'ECE', 'AEC', 'Male', 200000, 'liam.harris@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(12, 'Emma Clark', '2024-01-11', 19, NULL, 'ACOE', 'Female', 130000, 'emma.clark@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(13, 'Noah Lewis', NULL, 24, 'IT', 'ACET', 'Male', NULL, 'noah.lewis@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(14, 'Ava Hall', '2023-10-09', NULL, 'CSE', 'AEC', 'Female', 160000, 'ava.hall@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(15, 'Ethan Allen', '2022-12-25', 20, 'EEE', NULL, 'Male', 190000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(16, 'Sophia Scott', NULL, 18, 'IoT', 'ACET', NULL, 110000, 'sophia.scott@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(17, 'Mason Green', '2024-04-05', 23, 'MECH', 'AEC', 'Male', 240000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(18, 'Isabella Adams', NULL, 22, 'DS', 'ACOE', 'Female', NULL, 'isabella.adams@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(19, 'Logan Wright', '2023-08-18', 17, 'AIML', 'AEC', 'Male', 150000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(20, 'Mia King', '2023-09-22', NULL, 'ECE', 'ACET', 'Female', 180000, 'mia.king@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(21, 'Lucas Brown', '2024-02-10', 18, 'IT', 'AEC', 'Male', 150000, 'lucas.brown@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(22, 'Ella Watson', '2023-12-01', NULL, 'AIML', 'ACOE', 'Female', 210000, 'ella.watson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(23, 'Michael Young', '2023-07-15', 25, 'DS', 'ACET', 'Male', NULL, 'michael.young@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(24, 'Emma Hill', NULL, 21, 'CSE', 'AEC', NULL, 140000, 'emma.hill@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(25, 'Oliver Scott', '2023-05-22', 19, 'MECH', NULL, 'Male', 200000, 'oliver.scott@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(26, 'Sophia Adams', '2023-09-15', NULL, 'EEE', 'AEC', 'Female', 220000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(27, 'James Wilson', '2023-04-11', 23, 'IoT', 'ACET', NULL, 180000, 'james.wilson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(28, 'Isabella Moore', NULL, 20, 'ECE', 'ACOE', 'Female', NULL, 'isabella.moore@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(29, 'Benjamin Davis', '2023-11-20', 22, 'DS', 'AEC', 'Male', 250000, 'benjamin.davis@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(30, 'Emily Harris', '2024-03-02', NULL, 'CSE', 'ACET', 'Female', 170000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(31, 'Liam Thompson', '2023-08-22', 18, 'ECE', 'ACOE', 'Male', 180000, 'liam.thompson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(32, 'Charlotte Anderson', NULL, 23, 'IT', 'AEC', 'Female', 200000, 'charlotte.anderson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(33, 'William Baker', '2023-09-10', 24, 'AIML', 'ACET', 'Male', 150000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(34, 'Amelia Martinez', '2024-01-20', NULL, 'CSE', 'ACOE', 'Female', 190000, 'amelia.martinez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(35, 'Lucas Turner', '2023-06-18', 22, 'MECH', 'AEC', 'Male', 160000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(36, 'Harper Clark', NULL, 17, 'IoT', 'ACET', 'Female', 140000, 'harper.clark@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(37, 'Evelyn Campbell', '2024-03-15', 19, 'EEE', 'AEC', NULL, 220000, 'evelyn.campbell@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(38, 'Henry Sanchez', '2023-10-05', NULL, 'DS', 'ACET', 'Male', NULL, 'henry.sanchez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(39, 'Grace Diaz', '2023-08-30', 25, 'ECE', 'ACOE', 'Female', 240000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(40, 'Alexander Perez', NULL, 20, 'IT', 'AEC', 'Male', 180000, 'alexander.perez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(41, 'Sofia Ramirez', '2024-01-25', NULL, 'CSE', 'ACET', 'Female', 200000, 'sofia.ramirez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(42, 'Jackson Coleman', '2023-07-10', 21, 'MECH', 'ACOE', NULL, NULL, 'jackson.coleman@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(43, 'Ella Brooks', NULL, 23, 'AIML', 'AEC', 'Female', 170000, 'ella.brooks@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(44, 'Sebastian Watson', '2024-02-15', 18, 'DS', 'ACET', 'Male', 150000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(45, 'Mila Torres', '2023-09-25', NULL, 'EEE', 'ACOE', 'Female', 190000, 'mila.torres@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(46, 'David Reed', '2023-06-20', 17, 'IoT', 'AEC', 'Male', NULL, 'david.reed@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(47, 'Hannah Ward', NULL, 20, 'CSE', 'ACET', 'Female', 230000, 'hannah.ward@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(48, 'Ethan Gray', '2023-05-25', 19, 'ECE', 'ACOE', 'Male', 220000, 'ethan.gray@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(49, 'Maya Brooks', NULL, NULL, 'IT', 'AEC', 'Female', 150000, 'maya.brooks@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(50, 'James Cooper', '2024-02-05', 24, 'DS', 'ACET', 'Male', 190000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(51, 'Olivia Lopez', NULL, 18, 'CSE', 'ACOE', 'Female', 210000, 'olivia.lopez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(52, 'Michael Hughes', '2023-07-05', NULL, 'AIML', 'AEC', 'Male', 200000, 'michael.hughes@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(53, 'Sophia Sanders', NULL, 23, 'MECH', 'ACET', 'Female', 170000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(54, 'Lucas Ward', '2023-08-15', 21, 'IoT', 'ACOE', 'Male', 150000, 'lucas.ward@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(55, 'Emma Long', '2023-10-25', 19, 'EEE', 'AEC', 'Female', 140000, 'emma.long@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(56, 'Jack Hill', NULL, 25, 'DS', 'ACET', 'Male', NULL, 'jack.hill@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(57, 'Ava Simmons', '2023-11-05', NULL, 'CSE', 'ACOE', 'Female', 230000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(58, 'Liam Edwards', NULL, 20, 'ECE', 'AEC', 'Male', 200000, 'liam.edwards@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(59, 'Emily Morris', '2023-12-10', 18, 'IT', 'ACET', 'Female', 170000, 'emily.morris@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(60, 'Oliver Walker', '2024-01-18', 23, 'IoT', 'ACOE', NULL, 180000, 'oliver.walker@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(61, 'Amelia Turner', '2023-09-12', 22, 'AIML', 'AEC', 'Female', NULL, 'amelia.turner@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(62, 'Ethan Stewart', NULL, 17, 'CSE', 'ACET', 'Male', 210000, 'ethan.stewart@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(63, 'Mila Robinson', '2023-11-22', 19, 'DS', 'ACOE', 'Female', 190000, 'mila.robinson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(64, 'Lucas Green', NULL, NULL, 'EEE', 'AEC', 'Male', 140000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(65, 'Sophia Harris', '2024-03-20', 21, 'ECE', 'ACET', 'Female', 230000, 'sophia.harris@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(66, 'Benjamin Diaz', '2023-06-15', 25, 'MECH', 'ACOE', 'Male', 220000, 'benjamin.diaz@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(67, 'Isabella James', NULL, 24, 'CSE', 'AEC', 'Female', 160000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(68, 'Liam Martinez', '2023-08-25', 18, 'IoT', 'ACET', 'Male', 150000, 'liam.martinez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(69, 'Emma Clark', '2024-02-28', 20, 'DS', 'ACOE', NULL, NULL, 'emma.clark@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(70, 'Noah White', '2023-07-18', 23, 'EEE', 'AEC', 'Male', 200000, 'noah.white@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(71, 'Mia Evans', '2024-04-01', 19, 'AIML', 'ACET', 'Female', 240000, 'mia.evans@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(72, 'Alexander Perez', '2023-09-12', 20, 'CSE', 'ACOE', 'Male', 210000, 'alexander.perez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(73, 'Charlotte Adams', NULL, 22, 'ECE', 'AEC', 'Female', 200000, 'charlotte.adams@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(74, 'Elijah King', '2023-11-05', NULL, 'IoT', 'ACET', 'Male', 150000, 'elijah.king@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(75, 'Avery Torres', '2024-01-10', 23, 'DS', 'ACOE', 'Female', 190000, 'avery.torres@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(76, 'William Baker', NULL, 18, 'EEE', 'AEC', 'Male', 140000, 'william.baker@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(77, 'Harper Phillips', '2023-12-20', 21, 'MECH', 'ACET', 'Female', 170000, 'harper.phillips@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(78, 'Daniel Scott', '2023-10-15', 24, 'AIML', 'ACOE', 'Male', 220000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(79, 'Ella Foster', NULL, NULL, 'CSE', 'AEC', 'Female', 160000, 'ella.foster@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(80, 'Henry Ramirez', '2023-07-25', 25, 'IoT', 'ACET', 'Male', 150000, 'henry.ramirez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(81, 'Grace Rogers', '2024-03-05', 20, 'ECE', 'ACOE', 'Female', 200000, 'grace.rogers@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(82, 'Matthew Carter', NULL, 23, 'DS', 'AEC', 'Male', 190000, 'matthew.carter@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(83, 'Scarlett Bailey', '2023-06-10', 19, 'AIML', 'ACET', 'Female', 240000, 'scarlett.bailey@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(84, 'Logan Rivera', '2024-01-22', 22, 'CSE', 'ACOE', 'Male', 230000, 'logan.rivera@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(85, 'Victoria Reed', NULL, 18, 'IT', 'AEC', 'Female', 150000, 'victoria.reed@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(86, 'Samuel Lee', '2023-08-18', 20, 'EEE', 'ACET', 'Male', 140000, 'samuel.lee@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(87, 'Zoe Howard', '2024-02-10', 19, 'MECH', 'ACOE', 'Female', 170000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(88, 'David Bell', NULL, 24, 'AIML', 'AEC', 'Male', 220000, 'david.bell@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(89, 'Layla Hughes', '2023-09-10', 21, 'DS', 'ACET', 'Female', 190000, 'layla.hughes@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(90, 'Ethan Bennett', '2023-07-05', 23, 'ECE', 'ACOE', 'Male', 200000, 'ethan.bennett@example.com');
select * from student;
-------------------  in
select * from student where branch in('CSE','IoT','AIML');
---------------------between
select * from student where fee between 100000 and 150000;
------------
select ID ,name, age,date_of_admission from student where date_of_admission< to_date('2023-01-01','YYYY-MM-DD');


----- simple CASE
select id,age,branch,
case branch
when 'CSE' THEN 'computer science'
when  'ECE'THEN 'Electronics'
else 'other branch'
end as branch_fullform
from student;

---- searched case

select id,age,branch,fee,
case 
when fee >= 150000 then 'high'
when fee >=100000 then 'medium'
else 'low'
end as fee_status
from student;





