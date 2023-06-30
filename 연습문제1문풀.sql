#실습 1-4

SELECT* FROM customer;

#실습 1-5

SELECT `custid`,`name`,`hp`FROM `customer`;

#실습 1-6

SELECT *FROM `product`;

#실습 1-7

SELECT `company` FROM `product`;

#실습 1-8

SELECT distinct`company` FROM `product`;

#실습 1-9

SELECT `prodName`,`price`FROM `product`;

#실습 1-10

SELECT `prodName`, `price`+500 AS `조정단가` FROM `product`;

#실습 1-11

SELECT `prodName`,`stock`,`price`FROM `product` WHERE `company` ='오리온';

#실습 1-12

SELECT `orderProduct`,`orderCount`,`orderDate`
FROM 
	`order` 
WHERE
	`orderId`='c102'
#실습 1-13

SELECT `orderProduct`,`orderCount`,`orderDate`
FROM `order`
WHERE
	`orderId`='c102' AND `orderCount`>=2;

#실습 1-14

SELECT * 
FROM `product`
WHERE `price`BETWEEN 1000 AND 2000;

#실습 1-15

SELECT `custid`,`name`,`hp`,`addr`
FROM `customer`
WHERE `Name` LIKE '김%';

#실습 1-16

SELECT `custid`,`name`,`hp`,`addr`
FROM `customer`
WHERE `Name` LIKE '__';

#실습 1-17

SELECT * FROM `customer`
WHERE `hp` IS NULL;

#실습 1-18

SELECT *FROM `customer`
WHERE `addr`IS NOt NULL;

#실습 1-19

SELECT * FROM `customer`
order BY `rdate` DESC;

#실습 1-20

SELECT * FROM `order`
WHERE `orderCount`>=3
order BY `orderCount` DESC ,`orderProduct` ASC;
#실습 1-21

SELECT AVG(price) FROM `product`

#실습 1-22

SELECT SUM(stock) AS `재고량합계` 
FROM `product`
WHERE `company`='농심';

#실습 1-23

SELECT COUNT(custid)AS `고객수` FROM `customer`;

#실습 1-24

SELECT COUNT(DISTINCT`company`) AS `제조업체수` 
FROM`product`;

#실습 1-25


SELECT  `orderproduct`AS `주문상품번호`, SUM(`orderCount`) AS `총주문 수량`
FROM `order`
GROUP BY  `orderProduct`
order BY `orderproduct`asc;

#실습 1-26

SELECT `company`AS `제조업체`, 
COUNT(`COMPANY`)AS `제품수`,
MAX(`price`) AS `최고가`FROM `product`
GROUP BY `company`
order BY `제조업체`ASC;

#실습 1-27

SELECT `company`AS `제조업체`, 
COUNT(`COMPANY`)AS `제품수`,
MAX(`price`) AS `최고가`FROM `product`
GROUP BY `company`
HAVING `제품수`>=2
order BY `제조업체`ASC;

#실습 1-28

SELECT `orderProduct`,`orderId`,`orderCount`AS `총주문 수량`FROM `ORDER`
GROUP BY `orderId`,`orderProduct`,`orderCount`
order BY `orderProduct` ,`orderId`asc
;

#실습 1-29


SELECT `orderId`,`prodName`FROM `order` AS a
JOIN `product`AS b 
ON a.orderProduct = b.prodNo
WHERE `orderId`='c102';
 
#실습 1-30


SELECT `orderId`,`name`,`prodName`,`orderDate` FROM `product`AS a
JOIN `order` AS b 
ON a.prodNo= b.orderProduct
JOIN `customer` AS c
ON b.orderId= c.custid
WHERE `orderDate` LIKE '2022-07-03%';department