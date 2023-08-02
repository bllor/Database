#날짜 : 2023/08/02
#이름 : 최동일
#내용 : 게시판 프로젝트 실습하기

CREATE DATABASE `Jboard`;
#비번과 이름을 not null안하는 이유는 아이디를 지우면 두개를 널로 만들어야 되기 때문
CREATE TABLE `User`(
 `uid`			VARCHAR(20) PRIMARY KEY ,
 `pass`			VARCHAR(255) ,
 `name`			VARCHAR(20)  ,
 `nick`			VARCHAR(20) UNIQUE ,
 `email`			VARCHAR(50) UNIQUE ,
 `hp`				CHAR(13) UNIQUE ,
 `role`			VARCHAR(20) DEFAULT 'User',
 `zip`			CHAR(5),
 `addr1`			VARCHAR(255),
 `addr2`			VARCHAR(255),
 `regip`			VARCHAR(100),
 `rdate`			DATETIME,
 `leaveDate`	DATETIME
);


CREATE TABLE `Article`(
 `no`				INT AUTO_INCREMENT PRIMARY KEY, 
 `parent`		INT DEFAULT 0,
 `comment`		INT DEFAULT 0,
 `cate`			VARCHAR(20) DEFAULT 'free',
 `title`			VARCHAR(255),
 `content`		TEXT NOT NULL ,
 `file`			TINYINT DEFAULT 0,
 `hit`			INT DEFAULT 0,
 `writer`		VARCHAR(20) NOT null,
 `regip`			VARCHAR(100)NOT null,
 `rdate`			DATETIME NOT NULL,
 FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);


CREATE TABLE `File`(
 `fno`			INT AUTO_INCREMENT PRIMARY KEY ,
 `ano`			INT NOT NULL ,
 `oriName`		VARCHAR(255) NOT NULL ,
 `newName`		VARCHAR(255) NOT NULL ,
 `download`		INT DEFAULT 0,
 `rdate`			DATETIME NOT NULL ,
  FOREIGN KEY(`ano`) REFERENCES `article` (`no`)

);


CREATE TABLE `Terms`(
 `terms`  	TEXT NOT NULL,
 `privacy`	TEXT NOT NULL 

);