Create table Sales (Trans_id int, cust_id int, product_id int, sales_date DATE, price int, quantity int);

insert into SALES values(01, 101, 1, '01-JAN-18', 100, 1);
insert into SALES values(02, 102, 2, '02-JAN-18', 105, 4);
insert into SALES values(03, 103, 3, '03-JAN-18', 107, 6);
insert into SALES values(04, 104, 4, '04-JAN-18', 108, 9);
select * from SALES ;

delete from SALES where CUST_ID= 101;

insert into SALES values(01, 101, 1, '01-JAN-18', 100, 1);

select * from SALES ORDER BY TRANS_ID ;

insert into CUSTOMER values(01,'john','st street', 'M', '01-JAN-10', 8544285555);
insert into CUSTOMER values(01,'rambo','russ street ', 'M', '01-FEB-10', 8544285577);
update CUSTOMER set CUST_ID = 02 where NAME = 'rambo';
insert into CUSTOMER values(03,'priya','chennai', 'F', '10-MAR-10', 8544285570);
insert into CUSTOMER values(04,'loya','pune', 'F', '9-NOV-09', 8544285871);

select *  from CUSTOMER;

insert into PRODUCTS values(01,'food','Biscuits',10,50);
insert into PRODUCTS values(02,'Cosmetics','comb',5,100);
insert into PRODUCTS values(03,'Hardware','pipes',30,500);
insert into PRODUCTS values(04,'stationary','pen',17,15);

select * from PRODUCTS;
select count(*) From CUSTOMER where GENDER = 'F';
select count(*) from CUSTOMER where GENDER ='M';

select count(*) from SALES where TRUNC(SALES_DATE) = TRUNC(SYSDATE);

Select sum(PRICE) From SALES;
select avg(PRICE) From SALES;
select max(PRICE) From SALES;
select count(Price) from SALES;
select min(PRICE) from SALES;
insert into PRODUCTS values(05,'Cosmetics','deo',4,190);

-- This is the product table
Select CATEGORY,SUM(PRICE) from PRODUCTS GROUP BY category;  
select CATEGORY,avg(PRICE) from PRODUCTS GROUP BY category;
select max(avg(PRICE)) from PRODUCTS GROUP BY category;
select * from PRODUCTS;

commit;
rollback;
select * from PRODUCTS;

select CATEGORY,count(PRODUCT_ID) from PRODUCTS GROUP BY category;

insert into PRODUCTS values(06,'Cosmetics','hair-oil',10,190);

select * from PRODUCTS;

select price,count(unit) from PRODUCTS GROUP BY price;

select S.*,P.PRODUCT_ID,P.CATEGORY
from SALES S,PRODUCTS P 
where S.PRODUCT_ID = P.PRODUCT_ID;

commit;
commit;

select S.*,P.PRODUCT_ID,P.CATEGORY
from SALES S,PRODUCTS P 
where S.PRICE >= P.PRICE;


select E.EMPNAME||' gets salary of '|| E.EMPSAL FROM EMPLOYEE E where E.EMPID =2;

select E.EMPNAME,E.EMPID,E.EMPSAL,P.PRODUCT_ID,P.CATEGORY,P.UNIT 
From EMPLOYEE E,PRODUCTS P
Where E.EMPID (+) = P.PRODUCT_ID;

select EMPID FROM EMPLOYEE
UNION
select PRODUCT_ID FROM PRODUCTS;

select PRICE,PRODUCT_ID  FROM PRODUCTS
MINUS
select PRICE,PRODUCT_ID FROM SALES;




commit;

select UPPER('ORACLE'),LOWER('ORACLE'),INITCAP('ORACLE') from dual;

select 'Hello'||'Bibhash', TRIM('HELLO ')||' BIBHASH' from DUAL;

select 'Hello'||'Bibhash', LTRIM('HELLO ')||' BIBHASH',RTRIM('HELLO ')||' BIBHASH' from DUAL;

select LPAD(5,10,'*') from DUAL;
select RPAD(5,10,'*') from DUAL;

select SYSDATE,TO_CHAR(SYSDATE,'DD-MM-YYYY') FROM DUAL;
select SYSDATE,TO_DATE(SYSDATE,'DD-MM-YYYY') FROM DUAL:
SELECT ADD_MONTHS (SYSDATE, 6) MATURITY_DATE FROM dual;




SELECT LAST_DAY(sysdate) FROM DUAL;

SELECT LOCALTIMESTAMP FROM dual;

select CONCAT('Modi ji',' ki jai') from dual;

select sysdate from dual;

select ADD_MONTHS(Sysdate,3),LAST_DAY(SYSDATE),ADD_MONTHS(SYSDATE,-3) from dual;


select MONTHS_BETWEEN(SYSDATE,'31-JAN-17') from DUAL; 

select TO_CHAR(SYSDATE,'DL') From DUAL;

select TO_CHAR(SYSDATE,'Dy , Ddth MONTH YYYY') from DUAL; 

select TO_CHAR(SYSDATE,'HH:MM:SS') from dual;

commit;
commit;

