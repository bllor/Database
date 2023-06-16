#날짜: 2023/06/16
#이름: 최동일
#내용: 4.SQL고급 실습하기

실습4-1
CREATE TABLE `Member`(
`uid` VARCHAR(10) PRIMARY key,
`name`VARCHAR(10) NOT null,
`hp`CHAR(13) unique NOT null,
`pos`VARCHAR(10) NOT NULL DEFAULT'사원' ,
`dep`INT,
`rdate` DATETIME
);

CREATE TABLE `department`(
`depNo` INT PRIMARY key,
`name` VARCHAR(10) NOT null,
`tel` CHAR(12) NOT NULL
);

CREATE TABLE `sales`(
`seq`INT AUTO_INCREMENT PRIMARY key,
`uid` VARCHAR(10) NOT null,
`year`INT NOT null,
`month`int not null,
`sale`INT null
);

실습4-2
#member
INSERT INTO `Member`VALUES('a101','박혁거세','010-1234-1001','부장','101','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a102','김유신','010-1234-1002','차장','101','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a103','김춘추','010-1234-1003','사원','101','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a104','장보고','010-1234-1004','대리','102','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a105','강감찬','010-1234-1005','과장','102','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a106','이성계','010-1234-1006','차장','103','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a107','정철','010-1234-1007','차장','103','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a108','이순신','010-1234-1008','부장','104','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a109','허균','010-1234-1009','부장','104','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a110','정약용','010-1234-1010','사원','105','2020-11-19 11:39:48');
INSERT INTO `Member`VALUES('a111','박지원','010-1234-1011','사원','105','2020-11-19 11:39:48');

#department
INSERT INTO `department`VALUES('101','영업1부','051-512-1001');
INSERT INTO `department`VALUES('102','영업2부','051-512-1002');
INSERT INTO `department`VALUES('103','영업3부','051-512-1003');
INSERT INTO `department`VALUES('104','영업4부','051-512-1004');
INSERT INTO `department`VALUES('105','영업5부','051-512-1005');
INSERT INTO `department`VALUES('106','영업지원부','051-512-1006');
INSERT INTO `department`VALUES('107','인사부','051-512-1007');


#sales
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a101','2018','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2018','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2018','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2018','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2018','1',);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a101','2018','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2018','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2018','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2018','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a106','2018','2',);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a101','2019','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2019','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2019','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2019','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a107','2019','1',);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2019','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2019','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2019','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2019','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a106','2019','2',);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2020','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2020','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2020','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a106','2020','1',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a107','2020','1',);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2020','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2020','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2020','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2020','2',);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a108','2020','2',);

실습4-3



실습4-4



실습4-5



실습4-6



실습4-7



실습4-8



실습4-9



실습4-10



실습4-11



실습4-12



실습4-13



실습4-14



실습4-15



실습4-16



실습4-17






