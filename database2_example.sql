#날짜:2023/06/28
#이름:최동일
#내용:데이터베이스실습2


#부서
INSERT INTO `department` VALUES ('101','소아과','김유신','051-123-0101');
INSERT INTO `department` VALUES ('102','내과','김춘추','051-123-0102');
INSERT INTO `department` VALUES ('103','외과','장보고','051-123-0103');
INSERT INTO `department` VALUES ('104','피부과','선덕여왕','051-123-0104');
INSERT INTO `department` VALUES ('105','이비인후과','강감찬','051-123-0105');

INSERT INTO `department` VALUES ('106','산부인과','신사임당','051-123-0106');
INSERT INTO `department` VALUES ('107','흉부외과','류성룡','051-123-0107');
INSERT INTO `department` VALUES ('108','정형외과','송상현','051-123-0108');
INSERT INTO `department` VALUES ('109','신경외과','이순신','051-123-0109');
INSERT INTO `department` VALUES ('110','비뇨기과','정약용','051-123-0110');

INSERT INTO `department` VALUES ('111','안과','박지원','051-123-0111');
INSERT INTO `department` VALUES ('112','치과','전봉준','051-123-0112');


#의사
INSERT INTO `doctors` VALUES ('D101101','김유신','1976-01-21','M','101','과장','010-1101-1976','kimys@bw.com');
INSERT INTO `doctors` VALUES ('D101102','계백','1975-06-11','M','101','전문의','010-1102-1975','gaeback@bw.com');
INSERT INTO `doctors` VALUES ('D101103','김관창','1989-05-30','M','101','전문의','010--1103-1989','kwanch@bw.com');
INSERT INTO `doctors` VALUES ('D102101','김춘추','1979-04-13','M','102','과정','010-2101-1979','kimcc@bw.com');
INSERT INTO `doctors` VALUES ('D102104','이사부','1966-09-12','M','102','전문의','010-2104-1966','leesabu@bw.com');

INSERT INTO `doctors` VALUES ('D103101','장보고','1979-07-28','M','103','과장','010-3101-1979','jangbg@bw.com');
INSERT INTO `doctors` VALUES ('D104101','선덕여왕','1984-06-15','F','104','과장','010-4101-1984','queen@bw.com');
INSERT INTO `doctors` VALUES ('D105101','강감찬','1984-06-15','M','105','과장','010-5101-1965','kang@bw.com');
INSERT INTO `doctors` VALUES ('D106101','신사임당','1965-10-21','F','106','과장','010-6101-1972','sinsa@bw.com');
INSERT INTO `doctors` VALUES ('D107103','이이','1972-11-28','M','107','전문의','010-7103-1992','leelee@bw.com');

INSERT INTO `doctors` VALUES ('D107104','이황','1989-12-09','M','107','전문의','010-7104-1989','hwang@bw.com');
INSERT INTO `doctors` VALUES ('D108101','송상현','1977-03-14','M','108','과장','010-8101-1977','ssh@bw.com');

#간호사
INSERT INTO `nurses` VALUES('N101101','송승헌','1976-02-21','M','101','수간호사','010-1101-7602','ssh@bw.com');
INSERT INTO `nurses` VALUES('N102101','이영애','1975-07-11','F','102','수간호사','010-1102-7507','yung@bw.com');
INSERT INTO `nurses` VALUES('N102102','엄정화','1989-06-30','F','102','주임','010-1103-8906','um@bw.com');
INSERT INTO `nurses` VALUES('N102103','박명수','1979-05-13','M','102','주임','010-2101-7905','park@bw.com');
INSERT INTO `nurses` VALUES('N103101','정준하','1966-10-12','M','103','주임','010-2104-6610','jung@bw.com');

INSERT INTO `nurses` VALUES('N104101','김태희','1979-08-28','F','104','주임','010-3101-7908','taeh@bw.com');
INSERT INTO `nurses` VALUES('N105101','송혜교','1984-07-15','F','105','주임','010-4101-8407','song@bw.com');
INSERT INTO `nurses` VALUES('N106101','공유','1965-11-21','M','106','간호사','010-5101-6511','gong@bw.com');
INSERT INTO `nurses` VALUES('N107101','이병헌','1972-12-28','M','107','간호사','010-6101-7212','byung@bw.com');
INSERT INTO `nurses` VALUES('N108101','송중기','1992-10-07','M','108','간호사','010-7103-9210','jungi@bw.com');

#환자

INSERT INTO `patients` (`pat_id`,`doc_id`,`nur_id`,`pat_name`,`pat_jumin`,`pat_gen`,`pat_addr`,`pat_phone`,`pat_job`) VALUES('P102101','D102101','N102101','정우성','760121-1234567','M','서울','010-1101-7601','배우');
INSERT INTO `patients` (`pat_id`,`doc_id`,`nur_id`,`pat_name`,`pat_jumin`,`pat_gen`,`pat_addr`,`pat_phone`,`pat_job`) VALUES('P103101','D103101','N103101','이정재','750611-1234567','M','서울','010-1102-7506','배우');
INSERT INTO `patients` VALUES('P102102','D102104','N102103','전지현','890530-1234567','F','대전','010-1103-8905','jjh@naver.com','자영업');
INSERT INTO `patients` VALUES('P104101','D104101','N104101','이나영','790413-1234567','F','대전','010-2101-7904','lee@naver.com','회사원');
INSERT INTO `patients` VALUES('P105101','D105101','N105101','원빈','660912-1234567','M','대전','010-2104-6609','one@daum.net','배우');

INSERT INTO `patients` VALUES('P103102','D103101','N103101','장동건','790728-1234567','M','대구','010-3101-7907','jang@naver.com','배우');
INSERT INTO `patients` VALUES('P104102','D104101','N104101','고소영','840615-1234567','F','대구','010-4101-8406','goso@daum.net','회사원');
INSERT INTO `patients` VALUES('P108101','D108101','N108101','김연아','651021-1234567','F','대구','010-5101-6510','yuna@daum.net','운동선수');
INSERT INTO `patients` (`pat_id`,`doc_id`,`nur_id`,`pat_name`,`pat_jumin`,`pat_gen`,`pat_addr`,`pat_phone`,`pat_job`) VALUES('P102103','D102104','N102102','유재석','721128-1234567','M','부산','010-6101-7211','개그맨');
INSERT INTO `patients` (`pat_id`,`doc_id`,`nur_id`,`pat_name`,`pat_jumin`,`pat_gen`,`pat_addr`,`pat_phone`,`pat_job`) VALUES('P107101','D107104','N107101','강호동','920907-1234567','M','부산','010-7103-9209','개그맨');

INSERT INTO `patients` VALUES('P105102','D105101','N105101','조인성','891209-1234567','M','광주','010-7104-8912','join@gmail.com','배우');
INSERT INTO `patients` VALUES('P104103','D104101','N104101','강동원','770314-1234567','M','광주','010-8101-7703','dong@naver.com','배우');

#진료
INSERT INTO `treatment` VALUES('1021001','D102101','P102101','감기 몸살','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1031002','D103101','P103101','교통사고 외상','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1021003','D102104','P102102','위염, 장염','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1041004','D104101','P104101','피부 트러블','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1051005','D105101','P105101','코막힘 및 비염','2022-01-10 10:50:12');

INSERT INTO `treatment` VALUES('1031006','D103101','P103102','목디스크','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1041007','D104101','P104102','여드름','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1081008','D108101','P108101','오른쪽 발목 뼈 골절','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1021009','D102104','P102103','소화불량','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1071010','D107104','P107101','가슴 통증','2022-01-10 10:50:12');

INSERT INTO `treatment` VALUES('1051011','D105101','P105102','귀 이명','2022-01-10 10:50:12');
INSERT INTO `treatment` VALUES('1041012','D104101','P104103','팔목화상','2022-01-10 10:50:12');


#차트
INSERT INTO `charts` VALUES('C1021001','1021001','D102101','P102101','감기주사 및 약 처방');
INSERT INTO `charts` VALUES('C1031002','1031002','D103101','P103101','입원 치료');
INSERT INTO `charts` VALUES('C1021003','1021003','D102104','P102102','위내시경');
INSERT INTO `charts` VALUES('C1041004','1041004','D104101','P104101','피부감염 방지주사');
INSERT INTO `charts` VALUES('C1051005','1051005','D105101','P105101','비염치료');

INSERT INTO `charts` VALUES('C1031006','1031006','D103101','P103102','목 견인치료');
INSERT INTO `charts` VALUES('C1041007','1041007','D104101','P104102','여드름 치료약 처방');
INSERT INTO `charts` VALUES('C1081008','1081008','D108101','P108101','발목 깁스');
INSERT INTO `charts` VALUES('C1021009','1021009','D102104','P102103','주사처방');
INSERT INTO `charts` VALUES('C1071010','1071010','D107104','P107101','MRI검사');

INSERT INTO `charts` VALUES('C1051011','1051011','D105101','P105102','귀청소 및 약처방');
INSERT INTO `charts` VALUES('C1041012','1041012','D104101','P104103','화상 크림약 처방');

#문제1
#모든 의사의 의사ID,이름,생년월일,전공의과번호, 전공의과 이름을 조회하시오.

SELECT `doc_id`,`doc_name`,`doc_birth`,`dep_tel`,`dep_name`
FROM `doctors`
JOIN `department` USING(dep_no);

#문제2
#모든 간호사의 간호사ID,이름,생년월일,전공의과 번호, 전공의과 이름을 조회하시오.

SELECT `nur_id`,`nur_name`,`nur_birth`,`dep_tel`,`dep_name`
FROM `nurses`
join `department` USING(dep_no);

#문제3
#모든 환자의 환자ID,이름,주민번호,휴대폰,담당의사이름,담당 간호사 이름을 조회하시오.

SELECT `pat_id`,`pat_name`,`pat_jumin`,`pat_phone`,`doc_name`,`nur_name`
FROM `patients`
JOIN `doctors` USING(doc_id)
JOIN `nurses` USING(nur_id);

#문제4
#모든 진료내역에서 환자 이름, 담당의사 이름, 진료내용, 처방내용, 진료날짜를 조회하시오.

SELECT `pat_name`,`doc_name`,`treat_contents`,`chart_contents`,`treat_datetime`
FROM `charts`
JOIN `doctors` USING(doc_id)
JOIN `patients` USING(pat_id)
JOIN `treatment`USING(treat_no)
;

#문제5
#모든 진료내역에서 '외과'에서 진료한 내역 가운데 진료번호, 환자이름, 담당의사명, 진료내용, 처방내용, 진료날짜를 조회하시오.

SELECT `chart_id`,`pat_name`,`doc_name`,`treat_contents`,`chart_contents`,`treat_contents`
FROM `charts`
JOIN `doctors` USING(doc_id)
JOIN `patients` USING(pat_id)
JOIN `treatment` USING(treat_no)
JOIN `department` USING (dep_no)
WHERE `dep_name`='외과'
;

#문제6
#모든 진료내역에서 '화상' 진료한 내역 가운데 진료번호, 환자이름, 담당의사명, 진료내용, 처방내용, 진료날짜를 조회하시오.

SELECT `chart_id`,`pat_name`,`doc_name`,`treat_contents`,`chart_contents`,`treat_contents`
FROM `charts` 
JOIN `doctors` USING(doc_id)
JOIN `patients` USING(pat_id)
JOIN `treatment`USING(treat_no)
WHERE `chart_contents` LIKE '%화상%%'; 

#문제7
#현재 날짜를 기준으로 30세 이상 40세 미만 환자를 조회 하시오.

#SELECT TO_DAYS(NOW())-to_days(SUBSTRING(`pat_jumin`,1,6))
#(ceil((SUBSTRING(`pat_jumin`,1,6)-TO_DAYS(NOW)/365))
#*
#FROM `patients`
#WHERE if((ROUND((SUBSTRING(`pat_jumin`,1,6)-TO_DAYS(NOW)/365))>=30) ;


#SELECT #TO_DAYS(NOW())-
#((SUBSTRING(`pat_jumin`,1,6)-230628)/365) FROM `patients`;


#SELECT TO_DAYS(substring(`pat_jumin`,1,6)) FROM `patients`;

#SELECT TO_DAYS(NOW());

#SELECT substring(`pat_jumin`,1,6)FROM `patients`;

#SELECT TO_DAYS(651021);


#patients 테이블 옆에 새로운 테이블을 만들어 준다.
SELECT * ,CONCAT('19',SUBSTRING(`pat_jumin`,1,2))AS `year`
FROM `patients`;patients
#concat문자열을 붙여주는 함수
#위와 같이 select*, concat~~as year를 하게 되면 
#patients테이블에는 영향을 주지 않고 가상화면에 year를 생성해서 만든다.

#select로 나오는 화면은 가상화면인데 여기서 다시 셀랙트를 할 수 있다.
SELECT *,YEAR(NOW())-`year` AS `age` 
FROM 
(SELECT * ,CONCAT('19',SUBSTRING(`pat_jumin`,1,2))AS `year`FROM `patients`) AS a;


######################################
SELECT * from(SELECT *, YEAR(NOW())-`year` AS `age`
 	FROM (SELECT * ,CONCAT('19',SUBSTRING(`pat_jumin`,1,2))AS `year`
	FROM `patients`;)AS a)AS b
WHERE `age` >= '30' AND `age`< '40'; 
#문제8
#모든전공부서에서 아직 의사ID가 부여되지 않은 의사의 이름과 부서명을 조회하시오.

SELECT `dep_manager`,`dep_name`
FROM department
LEFT JOIN doctors USING(dep_no)
WHERE doc_id IS NULL;

#문제9
#김태희 간호사가 맡고 있는 모든 환자의 이름을 구분자 ^으로 해서 `강동원^고소영^이나영`과 같이 조회하시오.

SELECT GROUP_CONCAT(`pat_name`SEPARATOR '^')AS `환자들`FROM `nurses`
JOIN `patients` USING(nur_id)
WHERE `nur_name`='김태희';


#문제10
#가장 많은 환자 수를 담당하는 간호사 ID, 간호사 이름, 담당환자수를 조회 하시오.
SELECT `nur_id`,`nur_name`,count(pat_name) as 담당환자수 FROM nurses
join patients USING(nur_id)
GROUP BY `nur_id`
ORDER BY `담당환자수`DESC
LIMIT 1;