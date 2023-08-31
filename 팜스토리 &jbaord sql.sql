CREATE DATABASE `Farmstory`;

# 회원 테이블
CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(100),
	`regDate`	DATETIME,
	`leaveDate`	DATETIME
);

# 약관 테이블
CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);

# 게시물 테이블
CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`writer`		VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);

# 파일 테이블
CREATE TABLE `File`(
	`fno`			INT	AUTO_INCREMENT PRIMARY KEY, # 파일번호
	`ano`			INT	NOT NULL,		 # 파일이 속하는 글번호
	`ofile`	   VARCHAR(255)	NOT NULL, # 원본 파일명
	`sfile`	   VARCHAR(255)	NOT NULL, # 저장 파일명
	`download`	INT	DEFAULT 0,		 # 다운로드 횟수
	`rdate`		DATETIME NOT NULL,	 # 파일 저장일
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);

# 상품 테이블
CREATE TABLE `Product` (
	`pNo` 		INT AUTO_INCREMENT PRIMARY KEY,
	`type`		TINYINT NOT NULL,
	`pName`		VARCHAR(100) NOT NULL,
	`price`		INT DEFAULT 0,
	`delivery`	INT DEFAULT 0,
	`stock`		INT DEFAULT 0,
	`sold`		INT DEFAULT 0,
	`thumb1`		VARCHAR(255) NOT NULL,
	`thumb2`		VARCHAR(255) NOT NULL,
	`thumb3`		VARCHAR(255) NOT NULL,
	`seller`		VARCHAR(20)  NOT NULL,
	`etc`			VARCHAR(255),
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`seller`) REFERENCES `User`(`uid`)
);

# 주문 테이블
CREATE TABLE `Order` (
	`orderNo`			INT AUTO_INCREMENT PRIMARY KEY,
	`orderProduct`		INT NOT NULL,
	`orderCount`		INT NOT NULL,
	`orderDelivery`	INT NOT NULL,
	`orderPrice`		INT NOT NULL,
	`orderTotal`		INT NOT NULL,
	`orderUser`			VARCHAR(20) NOT NULL,
	`orderDate`			DATETIME  NOT NULL,
	FOREIGN KEY(`orderProduct`) REFERENCES `Product`(`pNo`),
	FOREIGN KEY(`orderUser`)    REFERENCES `User`(`uid`)
);

#Order - etc추가
ALTER TABLE `Order` ADD COLUMN `orderEtc` VARCHAR(255) AFTER `orderTotal`;

ALTER TABLE `Order` ADD COLUMN `receiver` VARCHAR(255) AFTER `orderTotal`;
ALTER TABLE `Order` ADD COLUMN `hp` VARCHAR(255) AFTER `receiver`;
ALTER TABLE `Order` ADD COLUMN `zip` VARCHAR(255) AFTER `hp`;
ALTER TABLE `Order` ADD COLUMN `addr1` VARCHAR(255) AFTER `zip`;
ALTER TABLE `Order` ADD COLUMN `addr2` VARCHAR(255) AFTER `addr1`;


#####################################
#jboard SQL
CREATE DATABASE `Jboard`;
USE `Jbaoard`;
User
CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(100),
	`regDate`	DATETIME,
	`leaveDate`	DATETIME
);

CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`writer`		VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);
#File 테이블 ofile, sfile수정
CREATE TABLE `File`(
	`fno`			INT	AUTO_INCREMENT PRIMARY KEY,
	`ano`			INT	NOT NULL,
	`ofile`	VARCHAR(255)	NOT NULL,
	`sfile`	VARCHAR(255)	NOT NULL,
	`download`	INT	DEFAULT 0,
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);

CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);