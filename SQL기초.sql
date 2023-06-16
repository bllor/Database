#날짜: 2023/06/16
#이름: 최동일
#내용: 1.SQL 기초

#실습1-1
CREATE DATABASE `UserDB`;

#실습1-2
CREATE TABLE `User1`(
`uid` VARCHAR(10),
`name` VARCHAR(10),
`hp`CHAR(13),
`age`INT
);


#실습1-3
INSERT INTO `user1`VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO `User1`VALUES('A102','김춘추','010-1234-2222',23);
INSERT INTO `User1`VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `User1`(`uid`,`name`,`age`)VALUES('A104','강감찬',45);
INSERT INTO `USER1`SEt `uid`='A105',`name`='이순신',`hp`='010-1234-5555';

#실습1-4

SELECT*FROM `USER1`;
SELECT*FROM `USER1`WHERE `uid`='A101';
SELECT*FROM `USER1`WHERE `age`<'30';
SELECT*FROM `USER1`WHERE `age`>='30';
SELECT`uid`,`name`,`age` FROM `user1`;

#실습1-5

UPDATE `USER1` SET `hp`='010-1234-4444'WHERE `uid`='A104';
UPDATE `USER1`SET `age`='51' WHERE `uid`='A105';
UPDATE `USER1`SET`hp`='010-1234-1001',`age`='27'WHERE`uid`='A101';

#실습1-6
#데이터삭제
DELETE FROM `user1`WHERE `uid`='A101';
DELETE fROm `User1`WHERE `uid`='A102'AND`age`='25';
DELETE FROM `user1`WHERE `age`>='30';


#실습1-7
#SQL생성
CREATE TABLE `TbIUser`(
`userId` VARCHAR(10),
`userName` VARCHAR(10),
`userHp` CHAR(13),
`userAge` TINYINT,
`userAddr` VARCHAR(20)
);

CREATE TABLE `TbIProduct`(
`prdCode` int,
`prdName` VARCHAR(10),
`prdPrice` int,
`prdAmount` int,
`prdCompany` VARCHAR(10),
`prdMakeDate` DATE
);


#실습1-8
#데이터 입력

INSERT INTO `TbIUser`VALUES('p101','김유신','010-1234-1001',25,'서울시 중구');
INSERT INTO `TbIUser`VALUES('p102','김춘추','010-1234-1002',23,'부산시 금정구');
INSERT INTO `TbIUser`(`userId`,`userName`,`userAge`,`userAddr`)VALUES('p103','장보고','31','경기도 광주군');
INSERT INTO `TbIUser`(`userId`,`userName`,`userAddr`)VALUES('p104','강감찬','경남 창원시');
INSERT INTO `TbIUser`SET `userId`='p105',`userName`='이순신',`userHp`='010-1234-1005',`userAge`='50';


INSERT INTO `TbIProduct`VALUES('1','냉장고','800','10','LG','2022-01-06');
INSERT INTO `TBIPRODUCT`VALUES('2','노트북','1200','20','삼성','2022-01-06');
INSERT INTO `TBIPRODUCT`VALUES('3','TV','1400','6','LG','2022-01-06');
INSERT INTO `tbiproduct`(`prdCode`,`prdName`,`prdPrice`,`prdAmount`,`prdCompany`,`prdMakeDate`)
								VALUES('4','세탁기','1000','8','LG','2022-01-06');
INSERT INTO `TbIProduct`SET`prdCode`='5',`prdName`='컴퓨터',`prdPrice`='1100',`prdAmount`='0';
INSERT INTO `TbIProduct`VALUES('6','휴대폰','900','102','삼성','2022-01-06');


#실습1-9
SELECT*FROM `tbiuser`;
SELECT `userName`FROM`tbiuser`;
SELECT `userName`, `userHp`FROM `tbiuser`;
SELECT*FROM `tbiuser`WHERE `userId`='p102';
SELECT*FROM `tbiuser`WHERE `userId`='p104'OR`userId`='p105';
SELECT*FROM `tbiuser`WHERE `userAddr`='부산시 금정구';
SELECT*FROM `tbiuser`WHERE `userAge`>'30';
SELECT*FROM `tbiuser`WHERE `userHp`IS NULL;
UPDATE `tbiuser`SET `userAge`='42' where`userId`='p104';
UPDATE `tbiuser`SET `userAddr`='경남 김해시' WHERE `userId`='p105';
DELETE FROM `tbiuser`WHERE `userId`='p103';


SELECT*FROM `tbiproduct`;
SELECT`prdName`FROM `tbiproduct`;
SELECT`prdName`,`prdPrice` FROM `tbiproduct`;
SELECT*FROM `tbiproduct`WHERE`prdCompany`='LG';
SELECT*FROM `TBIPRODUCT`WHERE`prdCompany`='삼성';
UPDATE`tbiproduct`SET `prdCompany`='삼성',`prdMakeDate`='2021-01-01' WHERE `prdCode`='5';tbiproduct 










