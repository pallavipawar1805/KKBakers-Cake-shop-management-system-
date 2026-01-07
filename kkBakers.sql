CREATE SCHEMA if not exists KKbakers;            -- created schema/database
USE kkbakers; 					                 -- Used database
 
-- creating user to connect that will have access to your database server 
create user pallavipawar@localhost identified by "abcd";

CREATE TABLE if not exists department              -- creation of the tables
(department_id INT PRIMARY KEY,
department_name VARCHAR(255));

insert into department values
('101','Manager'),
('102','Bakery'),
('103','Chef'),
('104','Cake Decorater'),
('105','Service'),
('106','Sales'),
('107','providers');
 select * from department;
 
CREATE TABLE staff				
(staff_id INT PRIMARY KEY,
staff_name VARCHAR(255),
mob_no VARCHAR(20),
address VARCHAR(255),
join_date DATE,
email VARCHAR(255) unique,
salary INT,
department_id INT,
department varchar(50),
designation varchar(50),
gender enum("male","female","other"),
FOREIGN KEY(department_id)REFERENCES department(department_id) on delete cascade on update cascade);


insert into staff values
(201,"Ketan Khambe",9876556473,"sawarde","2023-03-02","Ketankhambe@gmail.com",20000,"102","Bakery","Baker","male"),
(202,"Sanika Bendal",9794534901,"Dervan","2023-04-01","Sanikabendal@gmail.com",25000,"103","chef","pastry chef","female"),
(203,"Vidya Shinde",9172546083,"Dervan","2023-05-05","Vidyashinde@gmail.com",20000,"102","Bakery","Baker","female"),
(204,"Rahul Ware",9543983456,"Dahivali","2023-05-10","Rahulware@gmail.com",20000,"104","Cake Decorator","Cake Decorator","male"),
(205,"lalit Gurav",9856256182,"sawarde","2023-05-11","Lalitgurav@gmail.com",40000,"101","Manager","Manager","male"),
(206,"Deepika Mandavkar",9678479023,"Dervan","2023-06-02","Deepikamandavkar@gmail.com",25000,"103","chef","Chocolatier","female"),
(207,"Kalpesh Nirmal",9905364728,"sawarde","2023-06-05","Kalpeshnirmal@gmail.com",30000,"102","Bakery","Head Baker","male"),
(208,"Akanksha Mohite",9729143255,"sawarde","2023-06-08","akankshamohite@gmail.com",30000,"102","Bakery","Head baker","female"),
(209,"Latikesh Gurav",9802618231,"sawarde","2023-06-10","Latikeshgurav@gmail.com",20000,"102","Bakery","Baker","male"),
(210,"Pratik Rane",9489231903,"chiplun","2023-06-15","Pratikrane@gmail.com",20000,"106","sales","sales manager","male"),
(211,"sudhir Desai",9956432345,"kamthe","2023-07-02","SudhirDesai@gmail.com",20000,"105","Service","customer service","male"),
(212,"Rajvir Dalvi",9087623422,"sawarde","2024-01-02","rajvirdalvi@gmail.com",20000,"105","service","customer service","male"),
(213,"sonali pathak",9925265436,"Dervan","2024-01-05","Soanlipathak@gmail.com",20000,"106","Sales","sales representative","female"),
(214,"Trupti pandit",9823572029,"chiplun","2024-02-10","Truptipandit@gmail.com",25000,"105","service","counter staff","female"),
(215,"Tejas surve",9728297327,"sawarde","2025-03-02","Tejassurve@gmail.com",15000,"107","providers","Delivery Driver","male"),
(216,"Tanuja Tambe",9075327128,"Dervan","2025-03-07","tanujatambe@gmail.com",25000,"105","service","counter staff","female"),
(217,"Tushar Khade",9327238121,"Kamthe","2025-03-10","Tusharkhade@gmail.com",20000,"107","Providers","Delivery Driver","male"),
(218,"Trishali Tambe",9076345278,"Dervan","2025-03-11","Trishalitambe@gmail.com",40000,"103","chef","cake chef","female"),
(219,"prerna shinde",9811973765,"sawarde","2025-03-11","prernashinde@gmail.com",40000,"103","chef","cake chef","female");


CREATE TABLE suppliers
(supplier_id INT PRIMARY KEY,
supplier_name VARCHAR(255) not null,
contact VARCHAR(10),
email varchar(50)unique,
address VARCHAR(255),
gender varchar(20));

insert into suppliers values
(401,"santosh pawar",9876453456,"Santoshpawar@gmail.com","chiplun","male"),
(402,"vishwas pathak",9236853487,"Vishwaspathak@gmail.com","sangameshwar","male"),
(403,"Ruturaj rane",9762983402,"Ruturajrane@gmail.com","Ratnagiri","male"),
(404,"shankar shetty",9429459850,"shankarshetty@gmail.com","chiplun","male"),
(405,"Gopal Deshpande",9978931065,"Gopaldeshpande@gmail.com","chipun","male"),
(406,"Navnit mane",9376903450,"Navnitmane@gmail.com","sangameshwar","male"),
(407,"krishna shinde",9072908121,"Krishnashinde@gmail.com","chiplun","male"),
(408,"shivaji kulkarni",9903427865,"shivajikulkarni@gmail.com","chiplun","male"),
(409,"Rushikesh datte",9381983472,"Rushikeshdatte@gmail.com","Sawarde","male"),
(410,"Aryan Dalvi",9805427887,"Aryandalvi@gmail.com","Sawarde","male");

CREATE TABLE mk_product
(mk_product_id INT PRIMARY KEY,
mk_product_name VARCHAR(255),
price INT,
stock_quantity INT,
supplier_id INT,
FOREIGN KEY(supplier_id)REFERENCES suppliers(supplier_id)on delete cascade on update cascade);
Insert into mk_product values
(301,"chocolate flour",2000, 10,401),
(302, 'vanilla flour',2000, 10,401),
(303, 'Dark compound chocolate',1500, 15,401),
(304, 'white compound chocolate',1500,15,401),
(305, 'Gel and Glaze',1500,10,402),
(306, 'Extracts and Flavourings',1000, 10,404),
(307, 'Mixes and Powders',1000, 10,403),
(308, 'Dry Fruits and Nuts',2000, 10,405),
(309, 'Sprinkles', 1000, 5,404),
(310, 'Sugar and salt',1600, 10,407),
(311, 'Fillings and Toppings',2000,40,404),
(312, 'Syrup',1000, 20,408),
(313, 'Chocolate cups',1000,80,409),
(314, 'knifes',1000, 300,410),
(315, 'Candles',1500, 350,406),
(316,'Cake Toppers',2000, 100,406);


CREATE TABLE my_product 
(my_product_id INT PRIMARY KEY,
my_product_name VARCHAR(255),
price INT,
stock_quantity INT);

insert into my_product values
(501,"Black Forest",700, 10),
(502, 'White Forest',700, 10),
(503, 'Rasmalai',800, 5),
(504, 'Red velvet',750, 5),
(505, 'Chocolate',600, 15),
(506, 'CHocolate truffle',700, 10),
(507, 'Pineapple',600, 10),
(508, 'Butterscotch',600, 10),
(509, 'Fresh Fruit', 1000, 5),
(510, 'chocolate pastry',  80, 40),
(511, 'Red velvet pastry',90, 40),
(512, 'Black Forest Pastry',90, 40),
(513, 'White Forest pastry',90, 40),
(514, 'chocolate Ball',20, 100),
(515, 'Candles',30, 150),
(516,'Cake Toppers',150, 200),
(517, 'Edible Toppers',80,20),
(518, 'Cup cake',40,100);
select * from my_product;

CREATE TABLE customers
(cust_id INT PRIMARY KEY,
cust_name VARCHAR(255),
email VARCHAR(250),
mob_no VARCHAR(20),
gender enum("male","female","other"),
address VARCHAR(255));

insert into customers values
(601, 'pallavi pawar', 'pallavipawar@gmail.com', 9876543210, 'female',  'Kamthe'),
(602, 'ronit singh', 'ronitsingh@gmail.com', 9876503210, 'male', 'Sawarde'),
(603, 'Aarav shetty', 'arjun@gmail.com', 9876511223, 'male',  'chiplun'),
(604, 'Nita mahadik', 'nisha@gmail.com', 9876523456, 'female',  'Sawarde'),
(605, 'Amol shrivastav', 'amit@gmail.com', 9876534567, 'male',  'Dahivali'),
(606, 'Neha rane', 'sneha@gmail.com', 9898989898, 'female', 'Dervan'),
(607, 'kiran katkar', 'kiran@gmail.com', 9876123456, 'male',  'Ratnagiri'),
(608, 'sonali varma', 'farhan@gmail.com', 9812345678, 'female',  'Dervan'),
(609, 'Ananya kulkarni', 'ananya@gmail.com', 9876567890, 'female', 'Sawarde'),
(610, 'Neerav Kumar', 'neeraj@gmail.com', 9867543210, 'male', 'Ratnagiri'),
(611, 'Meena Dalvi', 'meena@gmail.com', 9897654321, 'female', 'Kondmala'),
(612, 'Rahul Jain', 'rohit@gmail.com', 9876345123, 'male', 'Agva'),
(613, 'priya Deshpande', 'priya@gmail.com', 9856743210, 'female','Dervan'),
(614, 'vicky patil', 'vikas@gmail.com', 9845632109, 'male', 'Dahivali'),
(615, 'Rony verma', 'Ronyverma@gmail.com', 9823456789, 'male', 'sawarde');

select * from customers;


create table orders
(order_id int primary key,
my_product_name varchar(255),
my_product_id int,
cust_id int,
Quantity int,
order_date date,
total_amount int,
MOP varchar(50),
status varchar(50),
foreign key(my_product_id) references my_product(my_product_id) on delete cascade on update cascade,
foreign key(cust_id) references customers(cust_id) on delete cascade on update cascade);

Insert into orders values
(701, 'Black Forest',501,601,'1','2025-07-04',700.00, 'UPI','Delivered'),
(702, 'White forest',502,602,'1','2025-07-05', 700.00, 'Cash','Delivered'),
(703, 'cup cake', 518,603,'5','2025-07-06', 200.00, 'Card','Delivered'),
(704, 'chocolate Ball',514,604,'10','2025-07-10', 200.00, 'UPI','Delivered'),
(705, 'Red velvet', 504,605,'1','2025-07-20', 750.00, 'Card','Delivered'),
(706, 'Chocolate truffle',506,606,'1','2025-07-22', 700.00, 'UPI','Delivered'),
(707, 'Black Forest',501,607,'1','2025-07-24', 700.00, 'UPI','Delivered'),
(708, 'White forest',502,602,'1','2025-07-26', 700.00, 'Card','Delivered'),
(709, 'Chocolate pastry',510,609,'2','2025-08-01', 160.00, 'UPI','Delivered'),
(710, 'pineapple', 507,610,'1','2025-08-02', 600.00, 'Cash','Delivered'),
(711, 'Rasmalai', 503,603,'1','2025-08-03', 800.00, 'Cash','Delivered'),
(712, 'Black Forest',501,602,'1','2025-08-04', 700.00, 'UPI','Out for delivery');

select * from orders;
 
drop table customers;
drop table orders;
drop table mk_product;
drop table suppliers;

-- Fetching records with where clause
select * from staff where department="chef";
select * from orders where MOP="UPI" order by total_amount desc;

-- Updating the records
update customers set email="pallavikatkar07@gmail.com" where cust_id=601;
update customers set cust_id=6011 where cust_id=601;
update customers set cust_id=601 where cust_id=6011;
select * from customers;
select * from orders;

 -- deleting the row 
Delete from customers where cust_id = 615;
insert into customers values(615, 'Rony verma', 'Ronyverma@gmail.com', 9823456789, 'male', 'sawarde');

-- Renaming the table
rename table staff to staff_table;
rename table staff_table to staff;

-- distinct
select distinct my_product_name from orders;

-- renaming the multiple tables
rename table staff to staff_table,orders to orders_table;
rename table staff_table to staff,orders_table to orders;
  
  -- aggregate functions
  select count(*)from my_product;
  select sum(price) as total_revenue from my_product;
  select avg(price) as average_price from my_product;
  select max(price) as maximum_price from my_product;
  select min(price) as minimum_price from my_product;

  
  -- Clauses
  select * from customers where address="sawarde";
  select * from my_product where price between 500 and 1000;
  select distinct department from staff;
  select * from staff where join_date in("2023-03-02","2024-02-10");
  select * from staff where join_date between "2023-03-01" and "2024-02-08";
  select * from staff where salary > 20000;
  select * from staff where address="sawarde" or address="Dervan";
  select * from staff where mob_no is null;
  select * from customers;
  select * from staff;
 
 use kkbakers;
  -- pattern matching
  select * from customers where cust_name like "A%" ;  -- %: Matches zero or more characters.  _: Matches exactly one character.
  select * from customers where cust_name like "_A%" ;
  select * from customers where cust_name like "_a%";
select * from customers where cust_name like "p%";
 
 use kkbakers; 
-- JOINS
-- INNER JOIN     (fetch product names and customers name with address)
select o.my_product_name,c.cust_name,c.address from orders o inner join customers c 
on c.cust_id=o.cust_id;


-- Left Join
select c.cust_id,c.cust_name,c.email,o.order_id,o.my_product_name from customers c left join orders o 
on c.cust_id=o.cust_id;

-- Right join
select c.cust_id,c.cust_name,c.email,o.order_id,o.my_product_name from customers c Right join orders o
on c.cust_id=o.cust_id;

-- Full Join/Union (in mysql)(gives you only unique values)
select department_id,department from staff
union 
select department_id,department_name from department;

-- union all (Gives you all data with duplicates)
select department_id,department from staff
union all
select department_id,department_name from department;

-- Cross Join (cartesian product)
select c.cust_id,c.cust_name,c.email,o.order_id,o.my_product_name from Orders o cross join  customers c;

-- multiple Joins
select o.order_id,m.my_product_name,c.cust_name,c.cust_id
from orders o
join customers c on o.cust_id=c.cust_id
join my_product m on o.my_product_name=m.my_product_name;

select * from orders;
-- (wimdows Functions)
-- 1)row number
select order_id,cust_id,order_date,row_number() over (partition by cust_id order by order_date) as row_number1
from orders;
select * from orders;

-- 2)rank() and dense_rank()
select cust_id,order_id,total_amount,rank() over (partition by cust_id order by total_amount desc )as rank1,
dense_rank() over (partition by cust_id order by total_amount desc) as dense_rank1
from orders;
 
-- Distribute orders into quartiles(or any N-tiles)based on amount 
select order_id,total_amount,ntile(6) over (order by total_amount desc) as quartile
from orders;

-- Compare current order amount to previous and next order amount for each customer
select cust_id,order_id,order_date,total_amount,
lag(total_amount) over(partition by cust_id order by total_amount)as previous_amount,
lead(total_amount) over (partition by cust_id order by total_amount) as next_amount
from orders;

-- Running total of amount spent by customer for each order
select cust_id,order_id,order_date,total_amount,sum(total_amount) 
over (partition by cust_id order by order_date) as running_total
from orders; 

-- Average total_amount spent by customer per order
select cust_id,total_amount,avg(total_amount) over (partition by cust_id) as avg_total_sales_amount
from orders;

select * from my_product;
--  start transaction example (stock update)
start transaction;
UPDATE my_product 
SET 
    price= price + 100
WHERE
    my_product_id = 509;
    rollback;
commit;

-- places from where my most customers are
SELECT 
    address, COUNT(*) AS count_1
FROM
    customers
    GROUP BY address
ORDER BY count_1 DESC;

--  top 5 top customers
SELECT 
    c.cust_name, SUM(o.total_amount) AS total_spent
FROM
    customers c
        JOIN
    orders o ON c.cust_id = o.cust_id
GROUP BY c.cust_name
ORDER BY total_spent DESC
LIMIT 5;

--  best selling products
select * from orders;
SELECT 
    o.my_product_name, SUM(o.quantity) AS total_sold
FROM
    orders o
GROUP BY o.my_product_name
ORDER BY total_sold DESC
limit 5;


--  product wise revenue
SELECT 
    o.my_product_name,SUM(o.total_amount) AS revenue_per_product
FROM
    orders o
GROUP BY o.my_product_name
ORDER BY revenue_per_product DESC;

select * from orders;

--  most payment methods
SELECT 
    MOP, COUNT(*) AS most_transaction
FROM
    orders
GROUP BY MOP
ORDER BY most_transaction desc;

--  total revenue
SELECT 
    SUM(total_amount) AS total_revenue
FROM
    orders;

--  avg order value per customer
SELECT 
    c.cust_name, AVG(o.total_amount) AS avg_order_value
FROM
    customers c
        JOIN
    orders o ON c.cust_id = o.cust_id
GROUP BY c.cust_name;

--  SUBQUERY
-- Subquery in WHERE Clause (Single Value) {Scalar subquery}
SELECT staff_name, salary 
FROM staff 
WHERE salary > (SELECT AVG(salary) FROM staff);

-- Subquery in WHERE Clause (Multiple Values) {Multiple Row Subquery}
SELECT cust_name
FROM customers
WHERE cust_id IN (SELECT cust_id FROM orders);

--  Subquery in FROM Clause (Inline View)
SELECT cust_id,avg_totalamount
FROM ( 
  SELECT cust_id,AVG(total_amount) AS avg_totalamount 
  FROM orders
  GROUP BY cust_id
) AS product_avg 
WHERE avg_totalamount >200;

-- Correlated Subquery
SELECT staff_name, salary, department 
FROM staff s 
WHERE salary > ( 
  SELECT AVG(salary) 
  FROM staff 
  WHERE department = s.department 
);

-- customer who bought highest priced item
SELECT 
    *
FROM
    customers
WHERE
    cust_id IN (SELECT 
            cust_id
        FROM
            orders
        WHERE
            total_amount=(SELECT 
                    MAX(total_amount)
                FROM
                    orders));
               
use kkbakers;
select * from customers;


-- string functions 
select concat(cust_name,"-",address) from customers;                   -- concat join two strings or more than two strings
SELECT substring(email,1,5)as start_email from customers;              -- gives you the subpart of your string
select length(mob_no)as length_1 from customers;                       -- provides you length of your string
select locate('@',email) as location from customers;                   -- gives you the location of the substring from your string
select concat_ws('-',cust_name,mob_no)as formatted from customers;     -- similar like concat but allows specifying a separator
select upper(cust_name)as upper_text,lower(cust_name)as lower_text from customers;  -- gives uppercase and lowercase text
select trim(cust_name) from customers;                                              -- removes unnecessary spaces

SELECT  cust_name 
FROM customers 
WHERE LENGTH(cust_name) > 10;

SELECT CONCAT(SUBSTRING(cust_name, 1, 3), SUBSTRING(mob_no,-4)) AS 
username 
FROM customers;
select * from customers;

SELECT REPLACE(cust_name, 'a', '@') AS modified_name 
FROM customers;

-- ADVANCED MATHEMATICAL FUNCTIONS IN SQL
select round(56.739,2);                     -- Rounds a number to the nearest value based on decimal position.
SELECT CEIL(5.9), FLOOR(5.8);               -- CEIL(): Always rounds up to the next whole number.
											-- FLOOR(): Always rounds down to the previous whole number.
SELECT ABS(-120);							-- Returns the non-negative version of a number.
SELECT POWER(2, 3);							-- Raises a number to a given power.
SELECT SQRT(64);							-- Calculates the square root of a number. 
SELECT MOD(11, 4); 							-- Returns the remainder when one number is divided by another. 
SELECT SIGN(-200);                          -- Detect Number sign (1-positive,0-zero,-1-Negative)
SELECT TRUNCATE(78.9876, 2); 				--  Remove Decimal Digits Without Rounding
SELECT RAND();  							-- Returns a number between 0 and 1

