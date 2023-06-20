#실습1-1
CREATE DATAshopBASE `shop`;
CREATE USER `admin1`@`%` IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON shop.* TO `admin1`@`%`;
FLUSH PRIVILEGES;

#실습1-2
CREATE TABLE `Customer`(
`custid`VARCHAR(10)PRIMARY key,
`name`VARCHAR(10) NOT null,
`hp`CHAR(13) UNIQUE DEFAULT null,
`addr`VARCHAR(100) DEFAULT null,
`rdate`DATETIME NOT null
);

CREATE TABLE `Product`(
`prodNo`INT PRIMARY KEY AUTO_INCREMENT ,
`prodName`VARCHAR(10) NOT null,
`stock`INT NOT NULL DEFAULT 0,
`price`DOUBLE DEFAULT null,
`company`VARCHAR(20) NOT null
);

CREATE TABLE `Order`(
`orderNo`INT PRIMARY KEY AUTO_INCREMENT ,
`orderId`VARCHAR(10) NOT null,
`orderProduct`INT NOT null,
`orderCount`INT NOT NULL DEFAULT 1,
`orderDate`DATETIME NOT null
);

#실습1-3
#고객 테이블
INSERT INTO `Customer` VALUES ('c101','김유신','010-1234-1001','김해시 봉황동','2022-01-01');
INSERT INTO `Customer` VALUES ('c102','김춘추','010-1234-1002','경주시 보문동','2022-01-02');
INSERT INTO `Customer` VALUES ('c103','장보고','010-1234-1003','완도군 청사면','2022-01-03');
INSERT INTO `Customer` VALUES ('c104','강감찬','010-1234-1004','서울시 마포구','2022-01-04');
INSERT INTO `customer` set `custid`='c105',`name`='이성계',`rdate`='2022-01-05';
INSERT INTO `Customer` VALUES ('c106','정철','010-1234-1006','경기도 용인시','2022-01-06');
INSERT INTO `customer` set `custid`='c107',`name`='허준',`rdate`='2022-01-07';
INSERT INTO `Customer` VALUES ('c108','이순신','010-1234-1008','서울시 영등포구','2022-01-08');
INSERT INTO `Customer` VALUES ('c109','송상헌','010-1234-1009','부산시 동래구','2022-01-09');
INSERT INTO `Customer` VALUES ('c110','정약용','010-1234-1010','경기도 광주시','2022-01-10');

#제품 테이블
INSERT INTO `product` (`prodName`,`stock`,`price`,`company`) VALUES ('새우깡','5000','1500','농심');
INSERT INTO `product` (`prodName`,`stock`,`price`,`company`) VALUES ('초코파이','2500','2500','오리온');
INSERT INTO `product` (`prodName`,`stock`,`price`,`company`) VALUES ('포카칩','3600','1700','오리온');
INSERT INTO `product` (`prodName`,`stock`,`price`,`company`) VALUES ('양파링','1250','1800','농심');
INSERT INTO `product` SET `prodName`='죠리퐁',`stock`='2200',`company`='크라운';

INSERT INTO `product` (`prodName`,`stock`,`price`,`company`) VALUES ('마가렛트','3500','3500','롯데');
INSERT INTO `product` (`prodName`,`stock`,`price`,`company`) VALUES ('뿌셔뿌셔','1650','1200','오뚜기');

#주분 테이블
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c102','3','2','2022-07-01 13:51:10');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c101','4','1','2022-07-01 14:16:11');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c108','1','1','2022-07-01 17:23:18');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c109','6','5','2022-07-02 10:46:36');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c102','2','1','2022-07-03 09:15:37');

INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c101','7','3','2022-07-03 12:35:12');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c110','1','2','2022-07-03 16:55:36');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c104','2','4','2022-07-04 14:23:23');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c102','1','3','2022-07-04 21:54:34');
INSERT INTO `Order`(`orderId`,`orderProduct`,`orderCount`,`orderDate`)VALUES('c107','6','1','2022-07-05 14:21:03');

#실습1-4

SELECT*FROM `customer`;

#실습1-5

SELECT `custid`,`name`,`hp` FROM `customer`;

#실습1-6

SELECT *FROM `product`;

#실습1-7

SELECT `company`FROM `product`;

#실습1-8
#distict 중복 데이터 제외하고 출력해줌
SELECT distinct `company` FROM `product`;

#실습1-9

SELECT `prodName`,`price` FROM `product`;

#실습1-10

SELECT `prodName`, (`price`+500) AS `조정단가` FROM `product`;

#실습1-11

SELECT `prodName`,`stock`,`price` FROM `product` WHERE `company`='오리온'; 

#실습1-12

SELECT `orderProduct`,`orderCount`,`orderDate`FROM `order` WHERE `orderId`='c102';

#실습1-13

SELECT `orderProduct`,`orderCount`,`orderDate` FROM `Order` WHERE `orderId`='c102'AND `orderCount`>=2;

#실습1-14

SELECT * FROM `product`WHERE  `price`BETWEEN 1000 AND 2000;

#실습1-15

SELECT `custid`,`name`,`hp`,`addr` FROM `customer` WHERE `name` LIKE '김%';

#실습1-16

SELECT `custid`,`name`,`hp`,`addr` FROM `customer`WHERE `name`LIKE '__';

#실습1-17

SELECT*FROM `customer` WHERE `hp`IS null ;

#실습1-18

SELECT*FROM `customer` WHERE `addr` is NOT null;

#실습1-19

SELECT*FROM `customer` order BY `rdate` DESC;

#실습1-20

SELECT*FROM `order`
WHERE `orderCount`>=3
order BY
`orderCount`DESC, `orderProduct` asC; 


#실습1-21

SELECT AVG(price) FROM `product`;

#실습1-22

SELECT SUM(stock) AS `재고량 합계`
FROM 
	`product`
WHERE
	`company`='농심';

#실습1-23

SELECT  COUNT(custid)AS `고객수`
FROM `customer`;

#실습1-24

SELECT COUNT(distinct`company`)AS `제조업체수`
FROM `product`;

#실습1-25

SELECT `orderProduct` AS `주문상품번호`,
SUM(`orderCount`)AS `총주문수량` 
FROM`order`
GROUP BY `orderProduct`
order BY `orderProduct` asc;

#실습1-26

SELECT `company` AS `제조업체`,
COUNT(*)AS `제품수`,
MAX(`price`)AS `최고가`
FROM `product`
GROUP BY `company`
order BY `company`asc;

#실습1-27

SELECT `company` AS `제조업체`,
COUNT(*) AS `제품수`,
MAX(`price`)AS`최고가`
FROM `product`
GROUP BY `company`
HAVING `제품수`>='2';

#실습1-28 -x
#제품수량, 고객 ID가 같이 묶여서 정리가 되어야 하므로
#group by에 `orderproduct`,`orderId`가 들어간다.
SELECT `orderProduct`,`orderId`,SUM(`orderCount`)AS `총주문수량` 
FROM `order`
GROUP BY `orderproduct`,`orderId`
order BY `orderProduct` asc;

#실습1-29

SELECT a.orderId, b.prodName  FROM `order` AS a
JOIN `product`AS b
ON a.orderProduct = b.prodNo
WHERE `orderId`='c102';


#실습1-30 -x

SELECT `orderid`, `name`, `prodName`, `orderdate` FROM `order` AS a
JOIN `customer` AS b
ON a.orderId=b.custid
JOIN `product` AS c
ON a.orderProduct=c.prodNo
WHERE `orderdate` LIKE '2022-07-03%';

WHERE SUBSTR(`orderDate`,1,10)='2022-07-03';
#WHERE `orderdate` LIKE('2022-07-03');
