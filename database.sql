#날짜:2023/06/27
#이름:최동일
#내용:데이터 베이스 모델링 실습

#학과
INSERT INTO `departments` VALUES ('10','국어국문학과','051-510-1010');
INSERT INTO `departments` VALUES ('11','영어영문학과','051-510-1011');
INSERT INTO `departments` VALUES ('20','경영학과','051-510-1020');
INSERT INTO `departments` VALUES ('21','경제학과','051-510-1021');
INSERT INTO `departments` VALUES ('22','정치외교학과','051-510-1022');

INSERT INTO `departments` VALUES ('23','사회복지학과','051-510-1023');
INSERT INTO `departments` VALUES ('30','수학과','051-510-1030');
INSERT INTO `departments` VALUES ('31','통계과','051-510-1031');
INSERT INTO `departments` VALUES ('32','생명공학과','051-510-1032');
INSERT INTO `departments` VALUES ('40','기계공학과','051-510-1040');

INSERT INTO `departments` VALUES ('41','전자공학과','051-510-1041');
INSERT INTO `departments` VALUES ('42','컴퓨터공학과','051-510-1042');

#교수
INSERT INTO `professors` VALUES ('P10101','10','김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
INSERT INTO `professors` VALUES ('P10102','10','계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
INSERT INTO `professors` VALUES ('P11101','11','김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
INSERT INTO `professors` VALUES ('P11103','11','김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
INSERT INTO `professors` VALUES ('P11104','11','이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');

INSERT INTO `professors` VALUES ('P22110','22','장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
INSERT INTO `professors` VALUES ('P23102','23','선덕여왕','830614-1234567','010-4101-1984','queen@hg.ac.kr','대구');
INSERT INTO `professors` VALUES ('P31101','31','강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
INSERT INTO `professors` VALUES ('P31104','31','신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
INSERT INTO `professors` VALUES ('P40101','40','이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');

INSERT INTO `professors` VALUES ('P40102','40','이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
INSERT INTO `professors` VALUES ('P42103','42','송상헌','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');


#학생

INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('20101001','10','P10101','정우성','760121-1234567','010-1101-7601','서울');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('20101002','10','P10101','이정재','750611-1234567','010-1102-7506','서울');


INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('20111011','11','P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('20111013','11','P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('20111014','11','P11104','원빈','660912-1234567','010-2104-6609','one@daum.net','대전');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('21221010','22','P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('21231002','23','P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('22311011','31','P31104','김연아','651021-1234567','010-5101-6510','yuna@duam.net','대구');

INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('23111014','31','P31104','유재석','721128-1234567','010-6101-7211','부산');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('22401001','40','P40101','강호동','920907-1234567','010-7101-9209','부산');


INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('22401002','40','P40101','조인성','891209-1234567','010-7101-8912','join@gmail.com','광주');
INSERT INTO `students`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdEmail`,`stdAddr`)VALUES('22421003','42','P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');


#강좌
INSERT INTO `Lecture` VALUES('101001','P10101','대학글쓰기','2','10','본102');
INSERT INTO `Lecture` VALUES('101002','P10102','한국어음운론','3','30','본102');
INSERT INTO `Lecture` VALUES('101003','P10102','한국현대문학사','3','30','본103');
INSERT INTO `Lecture` VALUES('111011','P11103','중세영문학','3','25','본201');
INSERT INTO `Lecture` VALUES('111012','P11104','영미시','3','25','본201');

INSERT INTO `Lecture` VALUES('231110','P23102','사회복지학개론','1','8','별관103');
INSERT INTO `Lecture` VALUES('311002','P31101','통계학의 이해','2','16','별관303');
INSERT INTO `Lecture` VALUES('311003','P31104','기초 통계학','3','26','별관303');
INSERT INTO `Lecture` VALUES('401019','P40101','기계역학','3','36','공학관102');
INSERT INTO `Lecture` VALUES('421012','P42103','데이터베이스','3','32','공학관103');


#수강
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('20101001','101001','P10101');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('20101001','101002','P10102');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('20111013','111011','P11103');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('21231002','231110','P23102');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('22401001','401019','P40101');

INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('22401001','421012','P42103');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('20101001','101003','P10102');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('22421003','311003','P31104');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('22421003','421012','P42103');
INSERT INTO `REGISTER` (`stdNo`,`lecNo`,`proNo`)VALUES ('20111013','111012','P11104');

#문제1. 모든 학생의 학생번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.

SELECT `stdno`,`stdname`,`stdhp`,b.depNo,`depname`FROM `students`AS a
JOIN `departments`AS b ON a.depNo =b.depNo;
 
#문제2. 모든 교수의 교수번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.


SELECT `prono`,`proname`,`prohp`,b.depNo,`depname` FROM `professors` AS a
JOIN `departments` AS b
on a.depNo = b.depNo;


#문제3. 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오.

SELECT`lecno`,`lecname`,`proname`,`prohp`FROM `lecture` AS a
JOIN `professors` AS b
ON a.proNo=b.proNo;

#문제4. 모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰, 학과번호, 학과명을 조회하시오.

SELECT`lecno`,`lecname`,`prohp`,`proname`,`stdhp`,c.depno,`depname`
FROM `lecture` AS a
JOIN `professors`AS b
ON a.proNo= b.proNo
JOIN `students` AS C
ON b.proNo =a.proNo
JOIN `departments` AS d
ON b.depNo= c.depNo;

#문제5. 모든 수강신청 내역에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오.

SELECT `stdno`,`stdname`,`lecno`,`lecname`,`prohp`,`proname`FROM `lecture`AS a
JOIN `professors` AS b
ON a.proNo= b.proNo
JOIN `students` AS c
ON b.proNo= c.proNo;


#문제6. 수강신청 테이블에 출석점수, 중간고사점수, 기말고사점수를 임의로 입력하시오.(1~100 사이)



UPDATE `register` SET `regAttenscore`='100',`regMidScore`='70',`regFinalScore`='80' WHERE `stdno`='20101001' AND `lecno`='101001';
UPDATE `register` SET `regAttenscore`='100',`regMidScore`='70',`regFinalScore`='80'WHERE `stdno`='20101001' AND `lecno`='101002';
UPDATE `register` SET `regAttenscore`='100',`regMidScore`='80',`regFinalScore`='70'WHERE `stdno`='20111013' AND `lecno`='111011';
UPDATE `register` SET `regAttenscore`='90',`regMidScore`='50',`regFinalScore`='60'WHERE `stdno`='21231002' AND `lecno`='231110';
UPDATE `register` SET `regAttenscore`='80',`regMidScore`='40',`regFinalScore`='70'WHERE `stdno`='22401001' AND `lecno`='401019';

UPDATE `register` SET `regAttenscore`='100',`regMidScore`='100',`regFinalScore`='100'WHERE `stdno`='22401001' AND `lecno`='421012';
UPDATE `register` SET `regAttenscore`='100',`regMidScore`='80',`regFinalScore`='80'WHERE `stdno`='20101001' AND `lecno`='101003';
UPDATE `register` SET `regAttenscore`='70',`regMidScore`='60',`regFinalScore`='70'WHERE `stdno`='22421003' AND `lecno`='311003';
UPDATE `register` SET `regAttenscore`='70',`regMidScore`='60',`regFinalScore`='80'WHERE `stdno`='22421003' AND `lecno`='421012';
UPDATE `register` SET `regAttenscore`='60',`regMidScore`='50',`regFinalScore`='10'WHERE `stdno`='20111013' AND `lecno`='111012';


#UPDATE `register` SET
#							`regAttenscore`=CEIL(RAND()*100),
#							`regMidScore`=CEIL(RAND()*100),
#							`regfinalscore`=CEIL(RAND()*100);
#이렇게 하면 다 입력하지 않고 랜덤으로 값들이 들어감
#RAND 0~1까지 실수
#RAND()*100 0~100까지 실수
#CEIL 올림숫자 이므로 정수가 출력된다.

#문제7. 수강신청 테이블에 입력한 출석점수, 중간고사점수, 
#기말고사 점수를 모두 합산 후 평균을 구해 총점에 입력하시오

UPDATE `register` SET `regTotal`=(`regattenscore`+`regmidscore`+`regfinalscore`)/3;

#문제8. 수강신청 테이블에 총점을 기준으로 A ~ F 등급을 입력하시오.

UPDATE `RESIGTER`SET `reggrade`= if(`regtotal`>=90,'A',
											if(`regtotal`>=80,'B',
											if(`regtotal`>=70,'C',
											if(`regtotal`>=60,'D','F'
))));


#문제9. 수강신청 테이블에서 총점이 가장 큰 점수를 조회하시오.

SELECT MAX(regtotal) FROM `register`;

SELECT `regtotal` FROM `register` ORDER BY `regtotal` DESC LIMIT 1;
SELECT `regtotal` FROM `register` WHERE regtotal=(SELECT MAX(regtotal)FROM register);


#문제10. 수강신청 테이블에서 정우성 학생의 총점의 평균을 조회하시오.

SELECT`stdname`, AVG(regtotal)AS `총점의 평균` FROM `register`AS a
JOIN `students` AS b
on a.stdNo=b.stdNo
WHERE`stdname`='정우성'
GROUP BY `stdname`;
