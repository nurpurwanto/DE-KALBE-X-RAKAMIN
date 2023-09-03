CREATE TABLE customer_orders(
	order_no int PRIMARY KEY,
	purchase_amount int,
	order_date date,
	customer_id int,
	salesman_id int
);


insert into customer_orders(order_no,purchase_amount,order_date,customer_id,salesman_id)
values 	(10001,150,'2022-10-05',2005,3002),
		(10009,270,'2022-09-10',2001,3005),
		(10002,65,'2022-10-5',2002,3001),
		(10004,110,'2022-08-17',2009,3003),
		(10007,948,'2022-09-10',2005,3002),
		(10005,2400,'2022-07-27',2007,3001);
		
	
select customer_id, purchase_amount, order_date from customer_orders 
where purchase_amount < 100 or order_date<='2022-08-25' and customer_id>2001
order by order_date desc;

	



