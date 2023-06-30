#실습4-1

CREATE DATABASE `bookstore`;
CREATE USER `admin4`@`%` IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `bookstore`.* TO `admin4`@`%`;
FLUSH PRIVILEGES;
#실습4-2

CREATE TABLE `Customer`(
`custId` INT PRIMARY KEY auto_increment,
`name`VARCHAR(10) NOT null,
`address`VARCHAR(20) DEFAULT null,
`phone`CHAR(13) DEFAULT NULL 
);

CREATE TABLE `book`(
`bookId` INT PRIMARY key,
`bookName` VARCHAR(20) NOT null,
`publisher`VARCHAR(20) NOT NULL ,
`price`INT DEFAULT NULL 
);

CREATE TABLE `order`(
`orderId` INT PRIMARY KEY auto_increment,
`custId`INT NOT null,
`bookId`INT NOT NULL ,
`salePrice`INT NOT null,
`orderDate` DATETIME NOT null
);
#실습4-3

INSERT INTO `Customer` (``,``,``) VALUES ('','','');

INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('박지성','영국 멘체스터','010-5000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('김연아','대한민국 서울','010-6000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('장미란','대한민국 강원도','010-7000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('추신수','미국 클리블랜드','010-8000-0001');
INSERT INTO `Customer` (`name`,`address`) VALUES ('박세리','대한민국 대전');


INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('1','축구의 역사','굿스포츠','7000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('2','축구아는 여자','나무수','13000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('3','축구의 이해','대한미디어','22000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('4','골프 바이블','대한미디어','35000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('5','피겨 교본','굿스포츠','8000');

INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('6','역도 단계별기술','굿스포츠','6000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('7','야구의 추억','이상미디어','20000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('8','야구를 부탁해','이상미디어','13000');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('9','올림픽 이야기','삼성당','7500');
INSERT INTO `book`(`bookId`,`bookname`,`publisher`,`price`) VALUES ('10','Olympic Champions','Pearson','13000');


INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('1','1','6000','2014-07-01');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('1','3','21000','2014-07-03');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('2','4','8000','2014-07-03');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('3','6','6000','2014-07-04');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('4','7','20000','2014-07-5');

INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('1','2','12000','2014-07-07');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('4','8','13000','2014-07-07');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('3','10','12000','2014-07-08');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('2','10','7000','2014-07-09');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES ('3','8','13000','2014-07-10');

#실습4-4

SELECT*FROM `customer`;


#실습4-5

SELECT*FROM `book`;

#실습4-6

SELECT`price`,`bookname` FROM `book`;

#실습4-7

SELECT*FROM `order`;

#실습4-8


SELECT `publisher` FROM `book`;

#실습4-9

SELECT distinct`publisher`FROM `book`;

#실습4-10

SELECT*FROM `book` WHERE `price`>=20000;

#실습4-11

SELECT*FROM `book` WHERE `price`<20000;

#실습4-12

SELECT*FROM `book` WHERE price BETWEEN 10000 AND 20000;


#실습4-13

SELECT `bookId`,`bookname`,`price` FROM`book` WHERE price BETWEEN 15000 AND 30000;

#실습4-14

SELECT * FROM `book` WHERE `bookId`IN(2,3,5);

#실습4-15

SELECT*FROM `book` WHERE MOD(bookId,2)=0;

SELECT*FROM `book` WHERE `bookId`%2=0;

#실습4-16

SELECT *FROM `customer`WHERE `name`LIKE '박%';

#실습4-17

select*FROM `customer`WHERE `address`LIKE '대한민국%';

#select*FROM `customer`WHERE `address`LIKE '대한민국%';
#실습4-18

SELECT*FROM `customer` WHERE `phone` IS NOT NULL;

#실습4-19

SELECT*FROM `book` WHERE `publisher`IN('굿스포츠','대한미디어');

#실습4-20

SELECT `publisher` FROM `book` WHERE `bookName`='축구의 역사';

#실습4-21

SELECT `publisher` FROM `book` WHERE `bookName` LIKE '축구%';

#실습4-22

SELECT*FROM `book` WHERE `bookname` LIKE'_구%';

#실습4-23

SELECT*FROM `book` WHERE `bookname` LIKE '축구%'
HAVING `price`>=20000;

SELECT*FROM `book` WHERE `bookname` LIKE '%축구%' AND `price`>=20000;
#축구%를하게 된다면 축구로 시작하는 책만 조회가 가능하므로 앞뒤로 붙이기
#WHERE이 AND로 연결가능
#실습4-24


SELECT*FROM `book` order BY bookname;

#실습4-25

SELECT*FROM `book` order BY `price`,`bookname`;

#실습4-26

SELECT*FROM `book` order BY `price`DESC, `publisher`;

#실습4-27

SELECT*FROM `book` order BY `price`desc LIMIT 3;

#실습4-28

SELECT*FROM `book` order BY `price`asc LIMIT 3;

#실습4-29

SELECT sum(salePrice) AS `총판매액`FROM `order`;

#실습4-30

SELECT 
SUM(salePrice) AS `총판매액`,
AVG(salePrice) AS `평균값`,
min(salePrice) AS `최저가`,
max(salePrice) AS `최고가`
FROM `order`;


#실습4-31

SELECT COUNT(*) AS `판매건수` FROM `order`;
#모든 컬럼을 가지고 카운트 집계를 했음
#만약 데이터가 엄청큰 수를 가지고 있다면 count하는데 시간이 오래걸림
#이 때 p.k로 지정된 컬럼을 조회하는 것이 빨리 처리가 됨.
#인덱스 처리가 되어있으므로 조금 더 빠르게 조회 가능.


#실습4-32 -? <- 내가 찾은 방법이 맞음.

SELECT `bookId`,REPLACE(`bookname`,'야구','농구') 
AS `bookname`,`publisher`,`price` FROM `book` ;





#실습4-33

SELECT `custId`, COUNT(*)AS 수량  FROM `order` 
WHERE `saleprice`>='8000' 
GROUP BY `custId` 
HAVING `수량`>='2';


#실습4-34

SELECT*FROM `customer` AS a
JOIN `order` AS b USING(custId)#custid가 같으므로 using으로 묶어줄 수 있다.
#ON a.custId= b.custId
order BY a.custId;

#실습4-35

SELECT*FROM `customer`AS a
join `order`AS b
ON a.custId = b.custId
order BY b.custId, saleprice;

#실습4-36

SELECT `name`, `saleprice`FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
order BY a.custId; 

#실습4-37

SELECT `name`, SUM(`saleprice`) FROM `customer`AS a
JOIN `order` AS b
ON a.custId = b.custId
GROUP BY `NAME`;

#이렇게 해도 만들어짐
#SELECT `name`, SUM(`saleprice`) FROM `customer`AS a
#JOIN `order` AS b
#ON a.custId = b.custId
#GROUP BY a.custid
#order BY name;

#실습4-38

SELECT `name`, `bookname` FROM `customer` AS a
JOIN `order`AS b ON a.custId= b.custId
JOIN `book` AS c ON b.bookId =c.bookId;

#실습4-39

SELECT `name`, `bookname` FROM `customer`AS a
JOIN `order` AS b ON a.custId= b.custId
JOIN `book`AS c ON b.bookId = c.bookId
WHERE `price`=20000;

#실습4-40

SELECT `name`, `saleprice` FROM `order` AS a
right JOIN `customer` AS b
ON a.custId=b.custId;


SELECT `name`,`saleprice`FROM `customer`AS a
LEFT JOIN `order` AS b
ON a.custid = b.custId;

#실습4-41

SELECT SUM(saleprice)AS 총매출  FROM `customer`AS a
JOIN `order` AS b
ON a.custid = b.custId
WHERE `name`='김연아';
#GROUP BY `name`
#HAVING `name`='김연아';

#join을 하지 않고 구현하는 방법
SELECT
 SUM(saleprice)AS 총매출 
 FROM `order` 
WHERE `custid`=(SELECT`custid`FROM `customer`WHERE `name`='김연아');

#실습4-42  


SELECT`bookname` FROM `book`
WHERE price=(SELECT MAX(price)FROM `book`);

SELECT `bookname` FROM `book` order BY `price` DESC LIMIT 1;


#실습4-43

SELECT `name`FROM `order` AS a
right JOIN `customer`AS b 
on a.custId = b.custId
WHERE `bookId`IS null ;

SELECT `name`FROM`Customer`
	WHERE `custid` NOT IN (SELECT DISTINCT `custid`FROM `order`);

#실습4-44


INSERT INTO `book` SET `bookId`='11',`bookname`='스포츠의학',
 `publisher`='한솔의학서적';
 
#실습4-45

UPDATE `Customer` SET `address`='대한민국 부산' WHERE `custid`='5';


#실습 4-46

DELETE FROM `customer` WHERE `custid`='5';ermodeldepartmentdepartment