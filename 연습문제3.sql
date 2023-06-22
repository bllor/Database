#날짜: 2023/06/22
#이름: 최동일
#내용: SQL연습문제 3

#실습 3-1
CREATE DATABASE `College`;
CREATE USER `admin3`@`%`IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON College.*TO `admin3`@`%`;
FLUSH PRIVILEGES;

#실습 3-2

CREATE TABLE `Student`(
`stdNo`CHAR(8) PRIMARY key,
`stdName`VARCHAR(20) NOT null,
`stdHp`CHAR(13) UNIQUE NOT null,
`stdYear`INT NOT null,
`stdAddress`VARCHAR(100) DEFAULT null
);


CREATE TABLE `Lecture`(
`lecNo` INT PRIMARY key,
`lecName` VARCHAR(20) NOT null,
`lecCredit`INT NOT null,
`lecTime` INT NOT null,
`lecClass`VARCHAR(10) DEFAULT null
);

CREATE TABLE `Register`(
`regStdNo` CHAR(8) NOT NULL ,
`regLecNo`INT NOT null,
`regMidScore` INT DEFAULT null,
`regFinalScore`INT DEFAULT null,
`regTotalScore`INT DEFAULT null,
`regGrade`CHAR(1) DEFAULT null
);

#실습 3-3

#학생테이블

INSERT INTO `student`(`stdNo`,`stdName`,`stdHp`,`stdYear`)VALUES('20201016','김유신','010-1234-1001','3');
INSERT INTO `Student` VALUES ('20201126','김춘추','010-1234-1002','3','경상남도 경주시');
INSERT INTO `Student` VALUES ('20210216','장보고','010-1234-1003','2','전라남도 완도시');
INSERT INTO `Student` VALUES ('20210326','강감찬','010-1234-1004','2','서울시 영등포구');
INSERT INTO `Student` VALUES ('20220416','이순신','010-1234-1005','1','부산시 부산진구');
INSERT INTO `Student` VALUES ('20220521','송상헌','010-1234-1006','1','부산시 동래구');

#강좌테이블
INSERT INTO `Lecture` VALUES ('159','인지행동심리학','3','40','본304');
INSERT INTO `Lecture` VALUES ('167','운영체제론','3','25','본B05');
INSERT INTO `Lecture` VALUES ('234','중급 영문법','3','20','본201');
INSERT INTO `Lecture` VALUES ('239','세법개론','3','40','본204');
INSERT INTO `Lecture` VALUES ('248','빅데이터 개론','3','20','본B01');
INSERT INTO `Lecture` VALUES ('253','컴퓨팅사고와 코딩','2','10','본B02');
INSERT INTO `Lecture` VALUES ('349','사회복지 마케팅','2','50','본301');

INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20201126','234');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20201016','248');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20201016','253');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20201126','239');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20210216','349');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20210326','349');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20201016','167');
INSERT INTO `Register` (`regStdNo`,`regLecNo`)VALUES('20220416','349');
 
#실습 3-4

SELECT*FROM `Lecture`;

#실습 3-5

SELECT*FROM `Student`;

#실습 3-6

SELECT*FROM `register`;

#실습 3-7

SELECT*FROM `student`
WHERE `stdYear`='3';


#실습 3-8

SELECT*FROM `Lecture` where `lecCredit`='2';

#실습 3-9


UPDATE `register` SET`regMidScore`='36', `regFinalScore`='42'WHERE `regStdNo`='20201126'	AND	`regLecNo`='234';
UPDATE `register` SET`regMidScore`='24', `regFinalScore`='62'WHERE `regStdNo`='20201016'	AND	`regLecNo`='248';
UPDATE `register` SET`regMidScore`='28', `regFinalScore`='40'WHERE `regStdNo`='20201016'	AND	`regLecNo`='253';
UPDATE `register` SET`regMidScore`='37', `regFinalScore`='57'WHERE `regStdNo`='20201126'	AND	`regLecNo`='239';
UPDATE `register` SET`regMidScore`='28', `regFinalScore`='68'WHERE `regStdNo`='20210216'	AND	`regLecNo`='349';
UPDATE `register` SET`regMidScore`='16', `regFinalScore`='65'WHERE `regStdNo`='20210326'	AND	`regLecNo`='349';
UPDATE `register` SET`regMidScore`='18', `regFinalScore`='38'WHERE `regStdNo`='20201016'	AND	`regLecNo`='167';
UPDATE `register` SET`regMidScore`='25', `regFinalScore`='58'WHERE `regStdNo`='20220416'	AND	`regLecNo`='349';

#실습 3-10

UPDATE `register`SET `regTotalScore`=`regMidScore`+`regFinalScore`,
`regGrade`=
if(`regTotalScore`>=90, 'A',
if(`regTotalScore`>=80, 'B',
if(`regTotalScore`>=70, 'C',
if(`regTotalScore`>=60, 'D','F'))));

#실습 3-11

SELECT*FROM `register` ORDER BY `regTotalScore` DESC;

#실습 3-12

SELECT * FROM `register` WHERE `regLecNo`='349' ORDER BY `regTotalScore`DESC;

#실습 3-13

SELECT * FROM `Lecture` WHERE `lecTime`>='30';

#실습 3-14

select `lecName`,`lecClass` FROM `Lecture`;

#실습 3-15


SELECT `stdNo`, `stdName`FROM `student`;

#실습 3-16

SELECT *FROM `student` WHERE `stdAddress`IS NULL;

#실습 3-17

SELECT*FROM `student` WHERE `stdAddress` LIKE '부산%';

#실습 3-18

SELECT *FROM `student` AS a
left JOIN `register` AS b
ON a.stdNo = b.regStdNo;

#실습 3-19

SELECT
`stdNo`,`stdName`,`regLecNo`,`regMidScore`,`regFinalScore`,`regTotalScore`,`regGrade`
FROM `Student`AS a, `register` AS b
WHERE a.stdNo= b.regStdNo
ORDER BY `stdNo`;

#실습 3-20

SELECT `stdName`,`stdNo`,`regLecNo` 
FROM `Student`AS a
JOIN `register`AS b ON a.`stdNo`=b.regstdNo
WHERE `regLecNo`='349';

#실습 3-21

SELECT `stdNo`,`stdName`,COUNT(`stdNo`)AS `수강신청건수`,SUM(`regTotalScore`)AS `종합점수`,
SUM(`regTotalScore`)/COUNT(`stdNo`)AS`평균`
FROM `student`AS `a` 
JOIN `register`AS `b` ON a.stdNo= b.regStdNo
GROUP BY `stdNo`;


#실습 3-22

SELECT *FROM `register`AS a
JOIN `lecture`AS b
ON a.regLecNo = b.lecNo;

#실습 3-23

SELECT `regStdNo`,`regLecNo`,`lecName`,`regMidScore`,`regFinalScore`,`regTotalScore`,`regTotalScore`,`regGrade`
FROM `register` AS a 
JOIN `lecture` AS b ON a.regLecNo= b.lecNo; 

#실습 3-24 

SELECT COUNT(*)AS `사회복지 마케팅 수강 신청건수`,
AVG(`regTotalScore`)AS `사회복지 마케팅 평균`
FROM `register` AS a 
JOIN `lecture` AS b
ON a.regLecNo= b.lecNo
WHERE `lecName`='사회복지 마케팅';
#GROUP BY `regLecNo`
#HAVING `regLecNo`='349'; 

#실습 3-25

SELECT `regStdNo`,`lecName`
FROM `register`AS a 
JOIN `Lecture` AS b ON a.regLecNo= b.lecNo
WHERE `regGrade`='A';


#실습 3-26

SELECT *FROM `Student` AS a 
JOIN `register`AS b ON a.stdNo= b.regStdNo
JOIN `lecture` AS c ON b.regLecNo=c.lecNo;

#실습 3-27  

SELECT `stdNo`,`stdName`,`lecNo`,`lecName`,`regMidScore`,`regFinalScore`,`regTotalScore`,`regGrade`
FROM `student`as a
JOIN `register`AS b ON a.stdNo= b.regStdNo
JOIN `lecture` AS c ON b.regLecNo=c.lecNo
ORDER BY regTotalScore desc;

#실습 3-28

SELECT `stdNo`,`stdName`,`lecName`,`regTotalScore`,`regGrade`
FROM `Student` AS a
JOIN `register`AS b ON a.stdNo= b.regStdNo
join `lecture` AS c ON b.regLecNo = c.lecNo
WHERE `regGrade` ='F';

#실습 3-29

SELECT `stdNo`,`stdName` ,SUM(`lecCredit`)AS `이수학점`
FROM `student`AS a
JOIN `register`AS b ON a.stdNo= b.regStdNo
join `lecture` AS c ON b.regLecNo = c.lecNo
#WHERE `regGrade`!='F' 두개같은 것
WHERE regToTalScore>=60
GROUP BY `StdNo`
order by stdNo;
#sum이 나오면 group by가 나와야 한다.

#실습 3-30

SELECT `stdNo`,`stdName`
,GROUP_CONCAT(`lecName`) AS`신청과목`
,GROUP_CONCAT(IF(`regToTalScore`>=60, `lecName`, null))AS`이수과목`
FROM `student` AS a
JOIN `register`AS b ON a.stdNo= b.regStdNo
join `lecture` AS c ON b.regLecNo = c.lecNo
GROUP BY `stdNo`;
#group_concat 문자열을 연결하는 함수

