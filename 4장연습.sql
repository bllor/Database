SELECT * FROM `member` WHERE `name`='김유신';
#member 테이블의 김유신을 가져온다.

SELECT*FROM `member` WHERE `pos`='차장'AND dep=101;
SELECT NAME FROM `member`; 
SELECT *FROM `member` WHERE `pos`='차장' OR `dep`='101';
SELECT*FROM `member`WHERE `name`!='김유신';
SELECT*FROM `member`WHERE `name`<>' 김춘추';
SELECT*FROM `member` WHERE `pos`='사원' OR  `pos`='대리';
SELECT*FROM `member`WHERE `pos`IN('사원','대리');#위의 or문과 같이 출력된다.
SELECT*FROM `member`WHERE `dep`IN('101','102','103');
SELECT*FROM `member`WHERE`name`LIKE '%신';#신으로 이름이 끝나는 애들
SELECT*FROM `member`WHERE `name`LIKE'김%';
SELECT*FROM `member`WHERE `name`LIKE '김__';
SELECT*FROM `member`WHERE `name`LIKE'_성_';#3글자로 시작하는이름 중에 가운데 성이 들어가는 이름
SELECT*FROM `member`WHERE `name`LIKE '정_';
SELECT*FROM `sales`WHERE `sale`>'50000';
SELECT*FROM `sales`WHERE `sale`>=50000 AND `sale`<100000 AND `month`='1';
#sale 금액이 5~10만원이내이고 1월인 데이터를 추출하는 과정
SELECT*FROM `sales`WHERE `sale` between 50000 and 100000;
SELECT*FROM `sales`WHERE `sale`NOT BETWEEN 50000 AND 100000;
SELECT*FROM `sales`WHERE `year`IN(2019,2020);#year가 2019,2020인 애들을 추출


#실습 4-4
SELECT*FROM `sales`ORDER BY `sale`;
SELECT*FROM `sales`ORDER BY `sale`DESC;

SELECT*FROM `sales`
WHERE
`sale`>'50000'
ORDER BY
`uid` DESC;

#실습 4-5
SELECT*FROM `sales`LIMIT 3;
SELECT*FROM `sales`LIMIT 5,3;