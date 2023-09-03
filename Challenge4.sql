CREATE TABLE Inventory(
	item_code int PRIMARY KEY,
	item_name varchar(50),
	item_price int,
	item_total int
);

INSERT INTO Inventory(item_code,item_name,item_price,item_total)
VALUES 
(2341,'Promag Tablet',3000,100),
(2342,'Hydro Coco 250ML',7000,20),
(2343,'Nutrive Benecol 100ML',20000,30),
(2344,'Blackmores Vit C 500Mg',95000,45),
(2345,'Entrasol Gold 370G', 9000,120);


select item_name from Inventory where item_total=(select max(item_total) from Inventory);

select * from inventory i 

update Inventory set item_price = 100000 where item_name = (select item_name from Inventory where item_total= (select max(item_total) from Inventory));

select item_name, item_price from Inventory where item_price = 100000;

insert into Inventory(item_code,item_name,item_price,item_total)
values (2343, 'Morinaga', 300000,100)

delete from Inventory where item_total = (select max(item_total) from Inventory );

drop table Inventory;
