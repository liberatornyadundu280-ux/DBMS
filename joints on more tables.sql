create table client(
client_id number primary key,
client_name varchar(50),
contact_no number 
);
insert into client values( 888 , 'Microsoft' , 2222222);
insert into client values(999,'Meta' , 3333333);
insert into client values(111,'Goole', 4444444);

create table Projects(
project_id number primaRY key,
project_name varchar2(50) ,
dead_line date ,
manager varchar(50),
c_id number(3) REFERENCES client(client_id)
);
insert into projects values( 101 ,'Excel Clone',to_date('27-11-2025','DD-MM-YYYY'),'xyz',888);
insert into projects values( 102 ,'Facebook clone',to_date('01-01-2027','DD-MM-YYYY'),'pqr',999);
insert into projects values( 103 ,'Chrome clone',to_date('17-03-2026','DD-MM-YYYY'),'abc',111);
insert into projects values( 104 ,'word clone',to_date('27-03-2028','DD-MM-YYYY'),'mno',888);

create table inten(
 inten_id  NUMBER primary key ,
 name varchar2(50),
 age number,
 email VARCHAR2(50), 
 pro_Id NUMBER REFERENCES projects(project_id)
);
insert into inten values(1,'Alice',17,'Alice@gmail.com',101);
insert into inten values(2,'Bob',18,'Bob@gmail.com',102);
insert into inten values(3,'Charlie',19,'Charlie@gmail.com',101);
insert into inten values(4,'David',21,'David@gmail.com',102);
insert into inten values(5,'em',20,'em@gmail.com',103);
select * from client;
select * from PROJECTS;
select * from inten;

select c.client_name , count(*) 
from inten i
join
projects p
on i.pro_id = p.project_id
join
client c
on p.c_id = c.client_id
group by client_name;
 
