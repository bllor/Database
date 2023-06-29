#날짜: 2023/06/29
#이름: 최동일
#내용: 데이터모델링 실습3

#유저
INSERT INTO `users` VALUES('user1','김유신','1976-01-21','M','010-1101-1976','kimys@naever.com','0','1','서울','2022-01-10 10:50:12');
INSERT INTO `users` (`userid`,`username`,`userbirth`,`usergender`,`userhp`,`userpoint`,`userlevel`,`useraddr`,`userregdate`)VALUES('user2','계백','1975-06-11','M','010-1102-1975','1000','1','서울','2022-01-10 10:50:12');
INSERT INTO `users` (`userid`,`username`,`userbirth`,`usergender`,`userhp`,`userpoint`,`userlevel`,`useraddr`,`userregdate`)VALUES('user3','김춘추','1989-05-30','M','010-1103-1989','1200','2','서울','2022-01-10 10:50:12');
INSERT INTO `users` VALUES('user4','이사부','1979-04-13','M','010-2101-1979','leesabu@gmail.com','2600','1','서울','2022-01-10 10:50:12');
INSERT INTO `users` VALUES('user5','장보고','1966-09-12','M','010-2104-1966','jangbg@.naver.com','9400','4','대전','2022-01-10 10:50:12');

INSERT INTO `users` VALUES('user6','선덕여왕','1979-07-28','M','010-3101-1979','queen@naver.com','1600','2','대전','2022-01-10 10:50:12');
INSERT INTO `users` VALUES('user7','강감찬','1984-06-15','F','010-4101-1984','kang@daum.net','800','0','대구','2022-01-10 10:50:12');
INSERT INTO `users` VALUES('user8','신사임당','1965-10-21','M','010-5101-1965','sinsa@.com','1500','1','대구','2022-01-10 10:50:12');
INSERT INTO `users` VALUES('user9','이이','1972-11-28','F','010-6101-1972','leelee@nate.com','3400','3','부산','2022-01-10 10:50:12');
INSERT INTO `users` (`userid`,`username`,`userbirth`,`usergender`,`userhp`,`userpoint`,`userlevel`,`useraddr`,`userregdate`)VALUES('user10','허난설헌','1992-09-07','F','010-7103-1992','4100','3','광주','2022-01-10 10:50:12');

#포인트
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user1','1000','회원가입 1000 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user1','6000','상품구매5% 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user3','2835','상품구매5% 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user7','3610','상품구매5% 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user5','3000','이벤트응모3000 적립','2022-01-10 10:50:12');

INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user2','1000','회원가입 1000 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user2','2000','이벤트응모2000 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user2','2615','상품구매5% 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user3','1500','이벤트응모1500 적립','2022-01-10 10:50:12');
INSERT INTO `points` (`userid`,`point`,`pointdesc`,`pointdate`) VALUES ('user6','15840','상품구매2% 적립','2022-01-10 10:50:12');


#판매자
INSERT INTO `sellers` VALUES ('10001','(주)다팔아','02-201-1976','정우성','서울');
INSERT INTO `sellers` VALUES ('10002','판매의민족','02-102-1975','이정재','서울');
INSERT INTO `sellers` VALUES ('10003','멋남','031-103-1989','원빈','경기');
INSERT INTO `sellers` VALUES ('10004','스타일살아','032-201-1979','이나영','경기');
INSERT INTO `sellers` VALUES ('10005','(주)삼성전자','02-214-1966','장동건','서울');

INSERT INTO `sellers` VALUES ('10006','복실이웃짱','051-301-1979','고소영','부산');
INSERT INTO `sellers` VALUES ('10007','컴퓨존(주)','055-401-1984','유재석','대구');
INSERT INTO `sellers` VALUES ('10008','(주)LG전자','02-511-1965','강호동','서울');
INSERT INTO `sellers` VALUES ('10009','굿바디스포츠','051-6101-1972','조인성','부산');
INSERT INTO `sellers` VALUES ('10010','누리푸드','051-710-1992','강동원','부산');


#카데고리
INSERT INTO `CATEGORIES` VALUES ('10','여성의류패션');
INSERT INTO `CATEGORIES` VALUES ('11','남성의류패션');
INSERT INTO `CATEGORIES` VALUES ('12','식품생필품');
INSERT INTO `CATEGORIES` VALUES ('13','취미반려견');
INSERT INTO `CATEGORIES` VALUES ('14','홈문구');

INSERT INTO `CATEGORIES` VALUES ('15','자동차공구');
INSERT INTO `CATEGORIES` VALUES ('16','스포츠건강');
INSERT INTO `CATEGORIES` VALUES ('17','컴퓨터가전디지털');
INSERT INTO `CATEGORIES` VALUES ('18','여행');
INSERT INTO `CATEGORIES` VALUES ('19','도서');

#상품
INSERT INTO `PRODUCTS` VALUES ('100101','11','10003','반팔티 L~2XL','25000','869','132','20');
INSERT INTO `PRODUCTS` VALUES ('100110','10','10004','트레이닝 통바지','38000','1602','398','15');
INSERT INTO `PRODUCTS` VALUES ('110101','10','10003','신상 여성운동화','76000','160','40','5');
INSERT INTO `PRODUCTS` (`prodno`,`cateno`,`sellerno`,`prodname`,`prodprice`,`prodsold`,`proddiscount`)VALUES ('120101','12','10010','암소 1등급 구이셋트 1.2kg','150000','87','15');
INSERT INTO `PRODUCTS` (`prodno`,`cateno`,`sellerno`,`prodname`,`prodprice`,`prodsold`,`proddiscount`)VALUES ('120103','12','10010','바로구이 부채살 250g','21000','61','10');

INSERT INTO `PRODUCTS` VALUES ('130101','13','10006','[ANF]식스프리 강아지 사료','56000','58','142','0');
INSERT INTO `PRODUCTS` VALUES ('130112','13','10006','중대형 사계절 강아지 옷','15000','120','80','0');
INSERT INTO `PRODUCTS` (`prodno`,`cateno`,`sellerno`,`prodname`,`prodprice`,`prodsold`,`proddiscount`)VALUES ('141001','14','10001','라떼 2인소파/방수 패브릭','320000','42','0');
INSERT INTO `PRODUCTS` VALUES ('170115','17','10007','지포스 3080 그래픽카드','900000','28','12','12');
INSERT INTO `PRODUCTS` VALUES ('160103','16','10009','치닝디핑 33BR 철봉','120000','32','28','0');


#주문
INSERT INTO `orders` VALUES ('22010210001','user2','52300','서울시 마포구121','1','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010210002','user3','56700','서울시 강남구 21-1','1','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010210010','user4','72200','서울시 강서구 큰대로 38','2','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010310001','user5','127000','경기도 광주시 초월로 21','1','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010310100','user1','120000','경기도 수원시 120번지','0','2022-01-10 10:50:12');

INSERT INTO `orders` VALUES ('22010410101','user6','792000','부산시 남구 21-1','2','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010510021','user7','92200','부산시 부산진구 56 10층','4','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010510027','user8','112000','대구시 팔달로 19','3','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010510031','user10','792000','대전시 한밭로 24-1','2','2022-01-10 10:50:12');
INSERT INTO `orders` VALUES ('22010710110','user9','94500','광주시 충열로 11','1','2022-01-10 10:50:12');


#주문상품상세
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010210001','100110','38000','15','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010210001','100101','25000','20','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010210002','120103','21000','10','3');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010310001','130112','56000','0','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010310001','130101','76000','0','2');

INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010210010','110101','76000','5','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010310100','160103','120000','0','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010410101','170115','900000','12','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010510021','110101','76000','5','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010510027','130101','56000','0','2');

INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010510021','100101','25000','20','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010510031','170115','900000','12','1');
INSERT INTO `orderitems` (`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)VALUES('22010710110','120103','21000','10','5');

#장바구니

insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user1','100101','1','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user1','100110','2','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user3','120103','1','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user4','130112','1','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user5','130101','1','2022-01-10 10:50:12');

insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user2','110101','3','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user2','160103','1','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user2','170115','1','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user3','110101','1','2022-01-10 10:50:12');
insert INTO `carts` (`userid`,`prodno`,`cartprodcount`,`cartproddate`) VALUES ('user6','130101','1','2022-01-10 10:50:12');


#문제1

SELECT `username`,`prodname`,`cartprodcount`
FROM `carts`
JOIN `users` USING(userid)
JOIN `products`USING(prodno)
WHERE cartprodcount>='2' ;

#문제2

SELECT 
`prodno`,`cateno`,`prodname`,`prodprice`,`sellermanager`,`sellerphone`
FROM `products`
JOIN `sellers` USING(sellerno)
;

#문제3

SELECT `userid`,`username`,`userhp`,`userpoint`,IfNULL(`POINT`,'0')as point
FROM `users`
left JOIN `points` USING (userid);

#문제4

SELECT `orderno`,`userid`,`username`,`ordertotalprice`,`orderdate`
FROM orders
JOIN USERs USING (userid)
WHERE `ordertotalprice` >='100000'
order BY `ordertotalprice` DESC, `username` ASC ; 

#문제5 -x

SELECT *
#DISTINCT `orderno`,`userid`,`username`,GROUP_CONCAT(`prodname` separator '.'),`orderdate`

#DISTINCT(`orderno`),`userid`,`username`,GROUP_CONCAT(`prodname` separator '.'),`orderdate`
FROM orders
JOIN users USING (userid)
JOIN orderitems USING(orderno)
JOIN products using(prodno)
GROUP BY userid,prodno,userid
 ;

#문제6


SELECT `prodno`,`prodname`,`prodprice`,`proddiscount`,ceil(prodprice*((100-proddiscount)/100))AS `할인된 가격`
FROM products;


#문제7

SELECT `prodno`,`prodname`,`prodprice`,`prodstock`,`sellerManager`
FROM `sellers`
JOIN products USING (sellerno)
WHERE `sellerManager`='고소영' ;

#문제8

SELECT sellerno, sellerbizname, sellermanager, sellerphone
FROM sellers 
left JOIN products USING(sellerno)
WHERE prodno IS null;


#문제9 -x


SELECT  orderno,SUM(prodprice) ,(prodprice*((100-proddiscount)/100))AS `할인된 가격`
	FROM orderitems
	JOIN orders USING(orderno)
	JOIN products USING (prodno)
	GROUP BY orderno,`할인된 가격`;
		

#문제 10
SELECT username, GROUP_CONCAT(prodname SEPARATOR '.')as 상품명 FROM users
JOIN orders USING(userid)
JOIN orderitems USING(orderno)
JOIN products USING(prodno)
WHERE `username`= '장보고';
