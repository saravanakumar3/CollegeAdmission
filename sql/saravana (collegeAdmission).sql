
create table student(
user_id int not null,
name varchar(50) ,
dob Date,
qualification varchar2(50) not null,
sslc_mark float not null,
hsc_mark  float not null,
gender  varchar(50) not null,
address  varchar(250) not null,
user_location varchar(50) not null,
nationally varchar(50) not null,
phone_number number not null,
email varchar(60) unique,
user_password varchar(60),
PRIMARY KEY (user_id)
);

Select * from student;
drop table student;
------------------------------------------------------
create table course(
course_id int not null,
course_name  varchar2(50) unique,
time_scale int not null,
qualification  varchar2(50),
admisssion_fee  int not null,
tuition_fee   int not null,
total_seats    int not null,
PRIMARY KEY (course_id)
);

INSERT INTO course (course_id,course_name,time_scale,qualification ,admisssion_fee,tuition_fee ,total_seats  )
VALUES ('1', ' Lawyer.', '3', 'Minimum  50 %Marks in Mandatory Subjects', '1000', '40000',35);
INSERT INTO course (course_id,course_name,time_scale,qualification ,admisssion_fee,tuition_fee ,total_seats  )
VALUES ('2', 'Fashion Designer ', '3', 'Minimum  50 %Marks in Mandatory Subjects', '1000', '40000',25);
INSERT INTO course (course_id,course_name,time_scale,qualification ,admisssion_fee,tuition_fee ,total_seats  )
VALUES ('3', 'Hotel Manager ', '3', 'Minimum  50 %Marks in Mandatory Subjects', '1000', '40000',30); 
select * from course;
drop table course;
------------------------------------------------------------------
create table studentcoursedetails(
Courseid int not null,
userid int null,
registrationnumber  int Unique,
paymentstatus varchar(50),
foreign key(Courseid) references course(course_id) ON DELETE CASCADE,
foreign key(userid) references student(user_id)ON DELETE CASCADE
);
select * from studentcoursedetails;

drop table studentcoursedetails;
------------------------------------------------------------
create table carddetails(
user_id int not null,
payment_id int not null,
course varchar(250),
amount number not null,
payment_date date,
card_number number(16),
cvv_number number(3),
cardholder_name varchar2(30),
foreign key(user_id) references student(user_id)ON DELETE CASCADE,
PRIMARY KEY (user_id)
);
SELECT * FROM carddetails;
drop table carddetails;
-------------------------------------------------------
create table admin(
adminId int not null,
adminName varchar2(50),
phoneNo number not null,
adminEmail varchar2(50),
password varchar(50)
);
drop table  admin;
commit;
SELECT * FROM admin;

INSERT INTO admin (adminId,adminName,phoneNo,adminEmail,password )
VALUES (31,'Daniel',6369326077,'daniel@gmail.com','abcd');
INSERT INTO admin (adminId,adminName,phoneNo,adminEmail,password )
VALUES (32,'Jack',636026077,'jacl@gmail.com','cdsx3');
---------------------------------------------------------------------------------------------------------------------------------
create sequence student_id
start with 2022 increment by 1;

create sequence course_id
start with 1 increment by 1;

create sequence studentcourse_id
start with 10 increment by 1;

drop  sequence studentcourse_id;
create sequence payment_id
start with  10 increment by 1;

drop  sequence payment_id;