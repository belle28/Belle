CREATE TABLE student(
student_no NUMBER NOT NULL,
student_NAME nVARCHAR2(50) NOT NULL,
PASSWORD NUMBER NOT NULL,
department nVARCHAR2(50) NOT NULL,
work_type NUMBER NOT NULL,
CONSTRAINT PK_student PRIMARY KEY(student_no)
);

insert into student values(2014244070,'�̼���', 123 ,'��ǻ�Ͱ��а�',1);
insert into student values(2013244080,'������', 123 ,'��ǻ�Ͱ��а�',1);
insert into student values(2013244090,'������', 123 ,'��ǻ�Ͱ��а�',1);
insert into student values(2012244010,'������', 123 ,'��ǻ�Ͱ��а�',1);
insert into student values(2011244011,'������', 123 ,'��ǻ�Ͱ��а�',1);
insert into student values(2010244012,'ȫ�浿', 123 ,'��ǻ�Ͱ��а�',1);
insert into student values(2015244013,'������', 123 ,'��ǻ�Ͱ��а�',1);


CREATE TABLE professor(
professor_no NUMBER NOT NULL,
professor_NAME nVARCHAR2(50) NOT NULL,
PASSWORD NUMBER NOT NULL,
department nVARCHAR2(50) NOT NULL,
work_type NUMBER NOT NULL,
CONSTRAINT PK_professor PRIMARY KEY(professor_no)
);

insert into professor values(19922441,'������', 123 ,'��ǻ�Ͱ��а�',2);
insert into professor values(19982442,'�����', 123 ,'��ǻ�Ͱ��а�',2);
insert into professor values(19972441,'����ȣ', 123 ,'��ǻ�Ͱ��а�',2);
insert into professor values(19942442,'������', 123 ,'��ǻ�Ͱ��а�',2);
insert into professor values(19942441,'����', 123 ,'��ǻ�Ͱ��а�',2);

CREATE TABLE class(
index_no NUMBER NOT NULL,
class_id NUMBER NOT NULL,
class_location nVARCHAR2(50) NOT NULL,
CONSTRAINT PK_class PRIMARY KEY(class_id)
);

insert into class values(1,406,'�ι���');
insert into class values(2,404,'�ι���');
insert into class values(3,409,'�ι���');
insert into class values(4,436,'�ι���');

CREATE TABLE SUBJECT(
subject_id NUMBER NOT NULL,
subject_name nVARCHAR2(50) NOT NULL,
class_id NUMBER NOT NULL,
day NUMBER NOT NULL,
start_time NUMBER NOT NULL,
END_time NUMBER NOT NULL,
professor_no NUMBER NOT NULL,
CONSTRAINT PK_SUBJECT PRIMARY KEY(subject_id),
CONSTRAINT fk_SUBJECT1 FOREIGN KEY(class_id) REFERENCES class(class_id),
CONSTRAINT fk_SUBJECT2 FOREIGN KEY(professor_no) REFERENCES professor(professor_no)
);


insert into SUBJECT values(245089,'����Ʈ������м���', 406 ,5,1221,1320,19982442);
insert into SUBJECT values(245088,'���̹����Ȱ���', 404 ,5,1321,1420,19922441);
insert into SUBJECT values(245110,'�ý��۽ùķ��̼�', 409 ,5,1421,1520,19942441);
insert into SUBJECT values(074010,'���ͳ�����', 404 ,5,1521,1620,19972441);
insert into SUBJECT values(245109,'�Ӻ����SW', 436 ,5,1621,1720,19982442);


CREATE TABLE ATTENDANCE(
index_no NUMBER,
student_no NUMBER ,
subject_id NUMBER ,
reg_date DATE ,
tag_time NUMBER ,
attendance_type NUMBER ,
student_name nVARCHAR2(50) ,
CONSTRAINT PK_ATTENDANCE PRIMARY KEY(index_no),
CONSTRAINT fk_attendance1 FOREIGN KEY(student_no) REFERENCES student(student_no),
CONSTRAINT fk_attendance2 FOREIGN KEY(subject_id) REFERENCES SUBJECT(subject_id)
);




CREATE TABLE registeration(
subject_id NUMBER ,
STUDENT_NO NUMBER ,
student_name nVARCHAR2(50),

CONSTRAINT fk_registeration1 FOREIGN KEY(SUBJECT_ID) REFERENCES SUBJECT(SUBJECT_ID),
CONSTRAINT fk_registeration2 FOREIGN KEY(STUDENT_NO) REFERENCES student(STUDENT_NO)
);


insert into registeration values(245089, 2014244070 , '�̼���');
insert into registeration values(245089, 2013244080 , '������');
insert into registeration values(245089, 2013244090 , '������');
insert into registeration values(245089, 2012244010 , '������');
insert into registeration values(245089, 2011244011 , '������');
insert into registeration values(245089, 2010244012 , 'ȫ�浿');
insert into registeration values(245089, 2015244013 , '������');





CREATE SEQUENCE index_no
INCREMENT BY 1
START WITH 1
NOCACHE;













