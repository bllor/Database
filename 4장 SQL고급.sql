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
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a101','2018','1',98100);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2018','1',136000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2018','1',80100);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2018','1',78000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2018','1',93000);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a101','2018','2',23500);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2018','2',126000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2018','2',18500);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2018','2',19000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a106','2018','2',53000);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a101','2019','1',24000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2019','1',109000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2019','1',101000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2019','1',53500);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a107','2019','1',24000);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2019','2',160000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2019','2',101000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2019','2',43000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2019','2',24000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a106','2019','2',109000);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2020','1',201000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2020','1',63000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2020','1',74000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a106','2020','1',122000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a107','2020','1',111000);

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a102','2020','2',120000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a103','2020','2',93000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a104','2020','2',84000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a105','2020','2',180000);
INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)VALUES('a108','2020','2',76000);

실습4-3
SELECT* FROM `MEMBER` WHERE `name`='김유신';
SELECT* FROM `MEMBER` WHERE `pos`='차장'AND `dep`='101';
SELECT* FROM `member` WHERE `name`!='김춘추';
SELECT * FROM `Member` WHERE `name` <> '김춘추';#김춘추빼고 다 인듯
SELECT * FROM `member` WHERE `pos`='사원'or `pos`='대리'; 
SELECT * FROM `Member` WHERE `name` LIKE '%신';#신으로 끝나는 사람
SELECT *FROM `member` WHERE `name` LIKE '정_';

실습4-4

SELECT* FROM `Sales`ORDER BY `sale`;
SELECT*FROM `sales`ORDER BY `sale` ASC;
SELECT*FROM `sales`ORDER BY `sale`DESC;
SELECT*FROM `sales`WHERE`sale`>50000 ORDER BY `sale`DESC;
#50000원보다 큰 데이터를 내림차순으로 정리

SELECT*FROM `sales` where`sale`>50000 
ORDER BY 
`year`,
`month`,
`sale` DESC;


실습4-5

SELECT* FROM `sales`LIMIT 3; #limit의 숫자만큼 출력된다.
SELECT*FROM `sales`LIMIT 0,3;#limit 숫자1, 숫자2 숫자1 시작점/숫자2길이 0부터 3개만 출력
SELECT*FROM `sales`LIMIT 1,2;
SELECT*FROM `sales`LIMIT 5,3;

SELECT*FROM `sales`
WHERE 
	`sale`>50000
order BY
	`year` DESC,
	`month`,
	`sale`DESC
LIMIT 5;



실습4-6
SELECT SUM(`sale`) AS `합계` FROM `sales`;

SELECT COUNT(`sale`)AS `갯수` FROM `sales`;

SELECT SUBSTRING(`hp`,10,4) AS `전화번호 끝자리`FROM `member`;
#hp의 10번째자리부터 4개를 뽑음

INSERT INTO `member` VALUES('b101','을지문덕','010-5555-1234','사장',107,NOW());



실습4-7

SELECT 
	SUM(`sale`) AS `총합`
FROM 
	`sales` 
WHERE
	`year`='2018' AND `month`='1'#이까지만 하면 조회

실습4-8
SELECT 
SUM(`sale`)AS `총합`,
AVG(`sale`)AS `평균`		
FROM
	`sales`
WHERE 
	`year`='2019' 
	AND
	`month`='2' 
	AND
	`sale`>50000;


실습4-9



실습4-10
#SELECT VERSION();
#SELECT*FROM `sales` GROUP BY `uid`;#이렇게 하면 오류가 나는데 8버전에서는 특정칼럼으로 조회가 안됨.

SELECT `uid`FROM `sales` GROUP BY `uid`;
#sales그룹에서 uid를 지정해서 uid끼리 묶는다.

SELECT `year`FROM `sales` GROUP BY `year`;

SELECT `uid`,`year` FROM `sales` GROUP BY `uid`,`year`;

SELECT
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM 
	`sales`
GROUP BY
`uid`,`year`;
#2018년 a101의 sales의 합계


SELECT 
	`uid`,
	`year`,
	SUM(`sale`)AS '합계' #3.합계를 구한다음
FROM 
	`sales`
WHERE 
	`sale`>50000# 1. 50000이상인 애들을 고르고
GROUP BY 
	`uid`,`year` #2. uid, year을 묶고
ORDER BY 
	`합계`DESC; #4.합계에 따라 내림차순 정렬


실습4-11

SELECT 
	`uid`,
	`year`,
	SUM(`sale`)AS '합계' #3.합계를 구한다음
FROM 
	`sales`
WHERE 
	`sale`>50000# 1. 50000이상인 애들을 고르고
GROUP BY 
	`uid`,`year` #2. uid, year을 묶고
HAVING
	`합계`>=200000 # 4.합계값이 200000원 이상만 있는 조건을 선택해서
ORDER BY 
	`합계` DESC; #5.합계에 따라 내림차순 정렬

실습4-12
#union은 테이블을 합치는 것
#a테이블,b테이블이 있을 때
#a
#b 로합치는 것을 union, ab로 합치는 것을 join

CREATE TABLE `sales2` LIKE `sales`;
INSERT INTO `sales2` SELECT*FROM `sales`;
UPDATE `sales2`SET `year`= `year`+3;

SELECT *FROM `sales`
union
SELECT *FROM `sales2`;

#아이디와 연도와 매출만 선별
(SELECT *FROM `sales`)
UNION
(SELECT *FROM `sales2`);

(SELECT `uid`,`year`,`sale`From `sales`)
UNION
(SELECT`uid`,`year`,`sale` FROM `sales2`);


(SELECT 
		`uid`,
		`year`,
		SUM(sale)AS `합계`
	FROM 
	`sales`
	GROUP by
	`uid`, `year`)
UNION
(SELECT 
	`uid`,
	`year`, 
	SUM(sale) AS `합계`
	from
	`sales2`
	GROUP BY 
	`uid`,
	`year`
	ORDER BY
	`year` ASC, 
	`합계`desc
	 );
실습4-13
#조인:a,b테이블의 공통된 부분을 참조해서 하나의 데이터로 합침
#조인: 정말 중요함

SELECT *FROM `sales`
INNER JOIN `member`
ON `sales`.uid = `member`.uid;
#sales과 member 테이블을 uid를 매칭시켜서 표를 합침

select*FROM 
`member`
JOIN
`department`
ON `member`.dep=`department`.depNo;
#ON을 할 때 왼쪽의 테이블이 기준 테이블이된다.

SELECT * FROM `SALES`AS `a` #sales테이블을 a로 부른다.
join `MEMBER`AS `b`
ON `a`.uid = `b`.uid;


SELECT* FROM `member`AS a
JOIN `department`AS b
ON a.dep=b.depNo;

SELECT* FROM `sales`AS a, `member` AS b #이렇게 쓰는것은 조인과 같다.
WHERE a.uid=b.uid;

SELECT * FROM `member`AS a, `department`AS b
WHERE a.dep=b.depNo;
 
#선별
SELECT a.`seq`,
		 a.`uid`,
		 a.`sale`, 
		 b.`name`, 
		 b.`pos` #a.seq는 a의 seq를 가져온다는 뜻, 안겹치면 ㄱㅊ을 듯.
FROM `sales` AS a
JOIN `member`AS b
ON a.`uid`= b.`uid`; #join의 조건

SELECT a.`seq`,
		 a.`uid`,
		 a.`sale`, 
		 b.`name`, 
		 b.`pos` #a.seq는 a의 seq를 가져온다는 뜻, 안겹치면 ㄱㅊ을 듯.
FROM `sales` AS a
JOIN `member`AS b
USING(uid)#=ON a.`uid`= b.`uid`;using으로 써도 똑같이 나온다.


SELECT a.`seq`,
		 a.`uid`,
		 a.`sale`, 
		 b.`name`, 
		 b.`pos` 
FROM `sales` AS a
JOIN `member`AS b
ON a.`uid`= b.`uid`
WHERE `sale`>100000; 
 
 
#테이블 세개 합치기

SELECT *FROM `sales`		AS a
JOIN `member`				AS b  ON a.uid= b.uid
JOIN `department`			AS c ON b.dep= c.depNo
;

SELECT
	a.`seq`,
	a.`uid`,
	a.`sale`,
	b.`name`,
	b.`pos`,
	c.`name`
	FROM `sales` AS a
	JOIN `member`AS b ON a.uid=b.uid
	JOIN `department`AS c ON b.dep=c.depNo;
실습4-14

INSERT INTO `sales`(`uid`,`year`,`month`,`sale`)
	values('p101','2018','1','35000'); 
	
SELECT*FROM `sales` AS a 
LEFT JOIN `member`AS b
ON a.uid=b.uid;
#31번째 추가됨
#기준이 되는 테이블의 모든 것은 나오고, 매칭이 안되는 값들은 null로 나온다.

SELECT*FROM `sales` AS a 
right JOIN `member`AS b
ON a.uid=b.uid;
#매칭안되는 애들은 제일 밑에 나오고 , 안되는 값은 null로 나온다.


실습4-15

SELECT
	a.uid,
	a.name,
	a.pos,
	b.name
FROM `member` AS a
join`department` AS b
on a.dep=b.depNo;
	

실습4-16
SELECT

SUM(sale) AS '합계'

FROM `member` AS a
JOIN `sales` AS b
ON a.uid=b.uid
WHERE NAME='김유신'and `year`='2019'
GROUP BY `year`;





#실습4-17
SELECT
	
	a.year AS `년도`,
	b.name AS `부서명`,
	b.pos AS `직급`,
	c.name AS `직원명`,
	SUM(sale) AS `매출합`
FROM `sales` 		as a
JOIN `member` 		AS b ON a.uid=b.uid
JOIN `department` AS c on b.dep=c.depNo
WHERE `year`='2019' AND sale>=50000
GROUP BY a.uid
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC;
;

select 
	b.`name` AS `직원명`,
   c.`name` AS `부서명`,
   b.`pos`  AS `직급`,
   a.`year` AS `년도`,    
   SUM(`sale`) as `매출합`
from `Sales`      a
join `Member`     b on a.uid = b.uid
join `Department` c on b.dep = c.depNo
where `year`=2019 and `sale` >= 50000
group by a.`uid`
having `매출합` >= 100000
order by `매출합` DESC;


SELECT
b.`name` AS `직원명`,
   c.`name` AS `부서명`,
   b.`pos`  AS `직급`,
   a.`year` AS `년도` ,
   SUM(`sale`) as `매출합`
FROM `sales` AS a
JOIN `member` AS b ON a.uid= b.uid
JOIN `department` AS c on b.dep=c.depNo
WHERE `year`=2019 AND `sale`>=50000
GROUP BY a.uid
having `매출합` >= 100000


