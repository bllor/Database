SELECT a.* ,
												b.name,
												c.prodName
												 from `order` as a 
												 join `customer` as b on a.orderId = b.custid
												 join `product` as c on a.orderproduct = c.prodNo
												 where `orderId`= 'c101';
												 
												 SELECT
												 a.* ,
												b.name,
												c.prodName 
												 from `order` as a 
												 join `customer` as b on a.orderid = b.custid
												 join `product` as c on a.orderproduct = c.prodNo
												 where `orderId`='c101';
UPDATE `product` set `STOCK` =`STOCK` - '1' WHERE `prodNo`='1';


CREATE TABLE `User5`(
`name` VARCHAR(10) NOT NULL,
`gender`TINYINT,
`age` INT DEFAULT 1,
`addr` VARCHAR(10)
);

ALTER TABLE `user5` ADD COLUMN `uid` VARCHAR(20) primary KEY FIRST;

CREATE TABLE `User4`(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10),
`gender`TINYINT,
`age` INT,
`addr` VARCHAR(255)
);
