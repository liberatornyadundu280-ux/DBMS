select * from customers;
select * from orders;
 select * from products;
 select * from invoices;
create  table orders(
  ord_id number  primary key ,
  customer_id number references customers(c_id),
  product_id number references products(p_id),
  quantity number not null
);

create table invoices (
    inv_id varchar2(50)  primary key,
    order_id number references orders(ord_id),
    inv_date date default current_date,
    total_amount number
);

create  sequence inv_seq start with 1 increment by 1;
create or replace function getinvoiceid return varchar2 is
begin
    return 'INV-'|| LPAD(inv_seq.nextval , 5 , 0);
end;
/

create or replace trigger  invoices_trigger
after insert on orders
for each row 
begin
insert into invoices (inv_id ,order_id , total_amount) values( getinvoiceid() ,
:new.ord_id ,
:new.quantity * (select price from products where p_id = :new.product_id));
end;
/
insert into orders  values(102,4,5,10);
select * from invoices;


create view employee_rank as
with cte as
(
select id,name ,salary , department , 
rank() over(partition by department order by salary desc) as rank
from employee 
where salary is not null
) select * from cte where rank = 1;

select * from employee_rank;

select * from employee_rank;

create or replace view ops_emplo as
select id,name,salary,department,gender,salary+123 from employee where department = 'Operations';

select * from ops_emplo;


update ops_emplo set gender = 'Male'
where id = 117;

