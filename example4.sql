#날짜:2023/06/25
#이름:최동일
#내용:연습문제4 문풀


#실습 4-1
CREATE DATABASE `bookstore`;
CREATE USER `admin4`@`%` IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `bookstore`.* TO `admin4`@`%`;
FLUSH PRIVILEGES;

#실습4-2
CREATE TABLE `customer`(
`custId` INT PRIMARY KEY AUTO_INCREMENT ,
`name` VARCHAR(10) NOT NULL ,
`address`VARCHAR(20) DEFAULT NULL ,
`phone`CHAR(13) DEFAULT NULL 
);

CREATE TABLE `book`(
`bookId` INT PRIMARY KEY ,
`bookName`VARCHAR(20) NOT NULL ,
`publisher`VARCHAR(20)  NOT NULL ,
`price`INT DEFAULT NULL 
);

CREATE TABLE `order`(
`orderId` INT PRIMARY KEY AUTO_INCREMENT ,
`custId`INT NOT NULL ,
`bookId`INT NOT NULL ,
`salePrice`INT NOT NULL ,
`orderDate`DATETIME NOT NULL 
);


#실습4-3

#고객

INSERT INTO `customer` (`name`,`address`,`phone`) VALUES ('박지성','영국 맨체스터','010-5000-0001');
INSERT INTO `customer` (`name`,`address`,`phone`) VALUES ('김연아','대한민국 서울','010-5000-0001');
INSERT INTO `customer` (`name`,`address`,`phone`) VALUES ('장미란','대한민국 강원도','010-5000-0001');
INSERT INTO `customer` (`name`,`address`,`phone`) VALUES ('추신수','미국 클리블랜드','010-5000-0001');
INSERT INTO `customer` (`name`,`address`) VALUES ('박세리','대한민국 대전');

#책테이블
INSERT INTO `book` VALUES ('1','축구의 역사','굿스포츠','7000');
INSERT INTO `book` VALUES ('2','축구아는 여자','나무수','13000');
INSERT INTO `book` VALUES ('3','축구의 이해','대한미디어','22000');
INSERT INTO `book` VALUES ('4','곮프 바이블','대한미디어','35000');
INSERT INTO `book` VALUES ('5','피겨 교본','굿스포츠','8000');

INSERT INTO `book` VALUES ('6','역도 단계별기술','굿스포츠','6000');
INSERT INTO `book` VALUES ('7','야구의 추억','이상미디어','20000');
INSERT INTO `book` VALUES ('8','야구를 부탁해','이상미디어','13000');
INSERT INTO `book` VALUES ('9','올림픽이야기','삼성당','7500');
INSERT INTO `book` VALUES ('10','Olympic Champions','Pearson','13000');


#order
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('1','1','6000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('1','3','21000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('2','5','8000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('3','6','6000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('4','7','20000','2014-07-01');

INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('1','2','12000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('4','8','13000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('3','10','12000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('2','10','7000','2014-07-01');
INSERT INTO `order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('3','8','13000','2014-07-01');

#실습4-4

SELECT *FROM `customer`;

#실습4-5

SELECT `bookname`,`price` FROM `book`;
#실습4-6

SELECT `price`,`bookname` FROM `book`;

#실습4-7

SELECT * FROM `book`;

#실습4-8

SELECT `publisher` FROM `book`;

#실습4-9


SELECT DISTINCT `publisher` FROM `book`;

#실습4-10

SELECT * FROM `book` WHERE `price`>=20000;

#실습4-11

SELECT * FROM `book` WHERE `price`<=20000;

#실습4-12

SELECT * FROM `book` WHERE `price` BETWEEN 10000 AND 20000; 

#실습4-13

SELECT `bookId`, `bookname`,`price` FROM `book` WHERE price BETWEEN 15000 AND 30000;

#실습4-14

SELECT * FROM `book` WHERE `bookId` IN(2,3,5);

#실습4-15

SELECT* FROM `book` WHERE `bookId`%2=0;


#실습4-16

SELECT* FROM `customer` WHERE NAME LIKE '박%';

#실습4-17

SELECT* FROM `customer` WHERE `address` LIKE '%대한민국%';

#실습4-18

SELECT* FROM `customer` WHERE `phone` IS NOT NULL;

#실습4-19

SELECT*FROM `book` WHERE `publisher` IN('굿스포츠','대한미디어');

#실습4-20

SELECT `publisher` FROM `book` WHERE `bookName`='축구의 역사';

#실습4-21

SELECT `publisher` FROM `book` WHERE `bookName`LIKE '%축구%' ;

#실습4-22

SELECT * FROM `book` WHERE `bookName` LIKE '_구%';

#실습4-23

SELECT*FROM `book` WHERE `price`>20000 AND `bookName` LIKE '%축구%';

#실습4-24

SELECT*FROM `book` ORDER BY `bookname`;

#실습4-25

SELECT*FROM `book` ORDER BY `price` , `bookname`;

#실습4-26

SELECT*FROM book ORDER BY `price`DESC, `publisher`;

#실습4-27

SELECT*FROM `book` ORDER BY `price`DESC  LIMIT 3;

#실습4-28

SELECT*FROM `book` ORDER BY `price` LIMIT 3;

#실습4-29

SELECT SUM(salePrice)AS `총판매액` FROM `order`;

#실습4-30

SELECT SUM(salePrice)AS `총판매액`,
 AVG(saleprice)`평균값`,
 MIN(saleprice)`최저가`,
 MAX(saleprice)`최고가`
 FROM `order`;

#실습4-31

SELECT COUNT(orderId)판매건수 FROM `order`;

#실습4-32

SELECT `bookId`,REPLACE(bookname,'야구','농구')bookname,`publisher`,`price` FROM `book`;

#실습4-33

SELECT `custid`, COUNT(bookId)수량 FROM `order` WHERE `saleprice`>=8000 #AND `수량`>=2
GROUP BY custid
HAVING `수량`>=2;

#실습4-34

SELECT* FROM `customer` AS a
JOIN `order` AS b
ON a.custId= b.custId;


#실습4-35

SELECT*FROM `customer` AS a
JOIN `order` AS b
ON a.custId= b.custId
ORDER BY a.custid;

#실습4-36

SELECT `name`,`saleprice` FROM `customer` AS a
JOIN `order`AS b
ON a.custId=b.custId


#실습4-37

SELECT`name`
, SUM(`saleprice`) 
FROM`customer` AS a
JOIN `order` AS b
ON a.custid = b.custid
GROUP BY NAME
ORDER BY name;

#실습4-38

SELECT `name`,`bookname` FROM `customer` AS a
JOIN `order`AS b ON a.custId=b.custid
JOIN `book` AS c ON b.bookId=c.bookId
ORDER BY a.custid;

#실습4-39

SELECT `name`,`bookname` FROM `customer` AS a
JOIN `order` AS b ON a.custId=b.custId
JOIN `book` AS c ON b.bookId=c.bookId
WHERE `price`=20000;

#실습4-40

SELECT `name`, `saleprice` FROM `order` AS a
right JOIN `customer` AS b
ON a.custId=b.custId;


#실습4-41

SELECT SUM(saleprice)`총매출액`FROM `order` AS a
JOIN `customer`AS b
ON a.custId=b.custId
WHERE `name`='김연아';

#실습4-42

SELECT `bookname` FROM `book` ORDER BY `price`DESC LIMIT 1;

#SELECT `bookname` FROM `book` WHERE price= SELECT(price,(MAX(price) FROM book));
#실습4-43

SELECT `name` FROM `customer` AS a
left JOIN `order`AS b
ON a.custId= b.custId
WHERE `bookid` IS  NULL;

#실습4-44

INSERT INTO `book` SET `bookid`='11',`bookname`='스포츠의학',`publisher`='한솔의학서적';

#실습4-45

UPDATE `customer` SET `address`='대한민국 부산' WHERE `custId`='5';
#실습4-46
DELETE  FROM `customer` WHERE `custid`=5;