


SELECT * FROM student WHERE registration_number = "1002086498"

CREATE TABLE student (
  registration_number varchar(20) NOT NULL,
  full_name varchar(100) NOT NULL,
  gender varchar(10) NOT NULL,
  date_of_birth DATE NOT NULL,
  age int(10) NOT NULL,
  address varchar(500) NOT NULL,
  phone varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  standard varchar(20) NOT NULL,
  date_of_admission DATE NOT NULL
)

ALTER TABLE student
ADD COLUMN school_fee int(10);

ALTER TABLE student
DROP COLUMN school_fee;

UPDATE student
SET school_fee = 8000
WHERE standard = '7th Standard';



CREATE TABLE marks (
registration_number varchar(20) NOT NULL,
exam_name varchar(20) NOT NULL,
date_of_exam DATE NOT NULL,
english int(5) NOT NULL,
maths int(5) NOT NULL,
science int(5) NOT NULL,
social int(5) NOT NULL
);

SELECT  * FROM marks as m;

CREATE TABLE attendance(
registration_number varchar(20) NOT NULL,
full_name varchar(100) NOT NULL,
attendance_status varchar(20) NOT NULL,
attendance_date DATE Not NULL
);

SELECT *  FROM attendance as a;

CREATE TABLE feepayment (
    registration_number VARCHAR(20) NOT NULL,
    receipt_number VARCHAR(6) NOT NULL,
    student_name VARCHAR(20) NOT NULL,
    standard VARCHAR(20) NOT NULL,
    total_amount_need_to_pay INT NOT NULL,
    paid_amount INT DEFAULT 0,
    payment_reason VARCHAR(100) DEFAULT 'Need to pay the 1st payment',
    Date_paid DATE,
    PRIMARY KEY (receipt_number)
);


CREATE TABLE teachers (
    teacherID VARCHAR(20) NOT NULL,
    teacherName VARCHAR(20) NOT NULL,
    teacherSubject VARCHAR(20) NOT NULL
);



DROP TABLE student;
DROP TABLE marks;
DROP TABLE attendance;
DROP TABLE feepayment;


DELETE FROM student WHERE standard = "1st Standard";
DELETE FROM feepayment WHERE receipt_number = "M1JU40";


DELETE FROM student;
DELETE FROM feepayment;




SELECT name FROM sqlite_master WHERE type='table';

SELECT * FROM student AS s;
SELECT * FROM feepayment AS f;
SELECT * FROM marks AS m;
SELECT * FROM attendance AS a;
SELECT * FROM teachers AS t;

SELECT * FROM attendance AS a WHERE a.registration_number = "1001" AND a.attendance_date = "10-26-2023";
SELECT f.total_amount_need_to_pay FROM feepayment AS f WHERE f.registration_number = "1002" ORDER BY f.Date_paid DESC LIMIT 1;
SELECT * FROM attendance ORDER BY attendance_date DESC LIMIT 1;

SELECT COUNT(*) AS TotalStudents FROM student;



