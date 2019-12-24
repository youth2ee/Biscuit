--------------------------------------------------------
--  파일이 생성됨 - 화요일-12월-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIEDATA
--------------------------------------------------------

  CREATE TABLE "BISCUIT"."MOVIEDATA" 
   (	"TITLE" VARCHAR2(200 BYTE), 
	"RUNTIME" NUMBER(5,0), 
	"NATION" VARCHAR2(200 BYTE), 
	"GENRE" VARCHAR2(200 BYTE), 
	"RATINGGRADE" VARCHAR2(200 BYTE), 
	"PRODYEAR" VARCHAR2(200 BYTE), 
	"RELEASEDATE" DATE, 
	"POSTER" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into BISCUIT.MOVIEDATA
SET DEFINE OFF;
Insert into BISCUIT.MOVIEDATA (TITLE,RUNTIME,NATION,GENRE,RATINGGRADE,PRODYEAR,RELEASEDATE,POSTER) values ('가장 보통의 연애',110,'대한민국','멜로/로맨스,코메디','15세 관람가','2019',to_date('19/10/02','RR/MM/DD'),'http://file.koreafilm.or.kr/thm/02/00/05/32/tn_DPK015009.jpg');
Insert into BISCUIT.MOVIEDATA (TITLE,RUNTIME,NATION,GENRE,RATINGGRADE,PRODYEAR,RELEASEDATE,POSTER) values ('윤희에게',105,'대한민국','멜로/로맨스,드라마','12세 관람가','2019',to_date('19/11/14','RR/MM/DD'),'http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPK015144.jpg');
Insert into BISCUIT.MOVIEDATA (TITLE,RUNTIME,NATION,GENRE,RATINGGRADE,PRODYEAR,RELEASEDATE,POSTER) values ('사선의 끝',90,'대한민국','드라마','15세 관람가','2013',to_date('19/10/30','RR/MM/DD'),'http://file.koreafilm.or.kr/thm/02/00/05/36/tn_DPK015174.jpg');
Insert into BISCUIT.MOVIEDATA (TITLE,RUNTIME,NATION,GENRE,RATINGGRADE,PRODYEAR,RELEASEDATE,POSTER) values ('니나 내나',103,'대한민국','가족,드라마','12세 관람가','2018',to_date('19/10/30','RR/MM/DD'),'http://file.koreafilm.or.kr/thm/02/00/05/33/tn_DPK015071.jpg');
Insert into BISCUIT.MOVIEDATA (TITLE,RUNTIME,NATION,GENRE,RATINGGRADE,PRODYEAR,RELEASEDATE,POSTER) values ('계절과 계절 사이',98,'대한민국','멜로드라마,드라마','15세 관람가','2017',to_date('19/10/03','RR/MM/DD'),'http://file.koreafilm.or.kr/thm/02/00/05/32/tn_DPK015034.jpg');

--------------------------------------------------------
--  Constraints for Table MOVIEDATA
--------------------------------------------------------

  ALTER TABLE "BISCUIT"."MOVIEDATA" MODIFY ("TITLE" NOT NULL ENABLE);
