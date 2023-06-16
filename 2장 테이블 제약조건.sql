#날짜: 2023/06/16
#이름: 최동일
#내용: 2.테이블 제약조건 실습

2.테이블 제약조건 실습


#실습2-1
CREATE TABLE`user2`(
`uid` VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13),
`age` int
);


#실습2-2
INSERT INTO `user2` VALUES ('a101','김유신','010-1234-1111','25');
INSERT INTO `user2` VALUES('a102','김춘추','010-1234-2222','23');
INSERT INTO `user2` VALUES ('a103','장보고','010-1234-3333','32');
INSERT INTO `user2`(`uid`,`name`,`age`)VALUES('a104','강감찬','45');
INSERT INTO `user2` SET `uid`='a105',`name`='이순신',`hp`='010-1234-5555'; 


#실습2-3

CREATE TABLE `user3`(
`uid` VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13) unique,
`age` int
);

#실습2-4
INSERT INTO `user3`VALUES ('a101','김유신','010-1234-1111','25');
INSERT INTO `user3`VALUES('a102','김춘추','010-1234-2222','23');
INSERT INTO `user3`VALUES('a103','장보고','010-1234-3333','32');
INSERT INTO `user3`VALUES('b101','김유신','010-1234-2211','25');
INSERT INTO `user3`VALUES('p101','홍길동','010-1234-1010','27');

#실습2-5

CREATE TABLE `parent`(
`pid`VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13)unique
);

CREATE TABLE `children`(
`cid` VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13) unique,
`pid` VARCHAR(10),
FOREIGN KEY(`pid`) REFERENCES `parent`(`pid`)
);

#실습2-6

INSERT INTO `parent` VALUES ('p101','홍길동','010-1234-1001');
INSERT INTO `parent` (`pid`,`name`,`hp`)VALUES('p102','임꺽정','010-1234-1002');
INSERT INTO `parent`SET  `pid`='p103',`name`='이성계',`hp`='010-1234-1003';

INSERT INTO `children` VALUES('c101','홍길남','010-1234-2001','p101');
INSERT INTO `children` VALUES('c102','임철수','010-1234-2002','p102');
INSERT INTO `children` (`cid`,`name`,`hp`,`pid`)VALUES ('c103','이방원','010-1234-2003','p103');
INSERT INTO `children`SET `cid`='104',`name`='홍길여',`hp`='010-1234-2004',`pid`='p101';


#실습2-7

CREATE TABLE `user4`(
`seq` int AUTO_INCREMENT PRIMARY key ,
`name`VARCHAR(10),
`gender` tinyint,
`age` int,
`addr` VARCHAR(225)
);

#실습2-8

INSERT INTO `user4`(`name`,`gender`,`age`,`addr`)VALUES ('김유신','1','25','김해시');
INSERT INTO `user4`(`name`,`gender`,`age`,`addr`)VALUES('김춘추','1','23','경주시');
INSERT INTO `user4`(`name`,`gender`,`age`,`addr`)VALUES('장보고','1','35','완도시');
INSERT INTO `user4`(`name`,`gender`,`age`,`addr`)VALUES('강감찬','1','42','서울시');
INSERT INTO `user4`(`name`,`gender`,`age`,`addr`)VALUES('신사임당','2','47','강릉시');
INSERT INTO `user4` SET `gender`='1',`addr`='부산시';


#실습2-9

CREATE TABLE`user5`(
`name` VARCHAR(10) NOT null,
`gender`tinyint,
`age` INT DEFAULT 1,
`addr` VARCHAR(10)
);

#실습2-10

INSERT INTO `user5`VALUES('김유신','1','25','김해시');
INSERT INTO `user5`VALUES('김춘추','1','23','경주시');
INSERT INTO `user5`VALUES('장보고','1','35','완도시');
INSERT INTO `user5`VALUES('신사임당','2','47','강릉시');

#실습2-11

ALTER TABLE `user5` ADD`hp`VARCHAR(20);
ALTER TABLE `user5`ADD `birth` CHAR(10) DEFAULT '0000-00-00'AFTER`name`;

#실습2-12

ALTER TABLE`user5`MODIFY `hp`CHAR(13);
ALTER TABLE`user5`MODIFY`age`TINYINT;

#실습2-13

ALTER TABLE `user5`CHANGE COLUMN `addr` `address`VARCHAR(10);


#실습2-14

ALTER TABLE `user5`DROP `gender`;

#실습2-15

CREATE TABLE `user6` LIKE `user5`;
#실습2-16

INSERT INTO `user6` SELECT * FROM `user5`;
