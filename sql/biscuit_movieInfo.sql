--------------------------------------------------------
--  파일이 생성됨 - 화요일-12월-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIEINFO
--------------------------------------------------------

  CREATE TABLE "BISCUIT"."MOVIEINFO" 
   (	"MOVIEINFO_NUM" NUMBER(5,0), 
	"MOVIEINFO_TITLE" VARCHAR2(200 BYTE), 
	"MOVIEINFO_GENRE" VARCHAR2(200 BYTE), 
	"MOVIEINFO_NATION" VARCHAR2(200 BYTE), 
	"MOVIEINFO_YEAR" VARCHAR2(200 BYTE), 
	"MOVIEINFO_GRADE" VARCHAR2(200 BYTE), 
	"MOVIEINFO_TIME" NUMBER(3,0), 
	"MOVIEINFO_DATE" DATE, 
	"MOVIEINFO_STAR" NUMBER(5,2), 
	"MOVIEINFO_POSTER" VARCHAR2(200 BYTE), 
	"MOVIEINFO_PLOT" VARCHAR2(4000 BYTE), 
	"MOVIEINFO_RATING" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into BISCUIT.MOVIEINFO
SET DEFINE OFF;
Insert into BISCUIT.MOVIEINFO (MOVIEINFO_NUM,MOVIEINFO_TITLE,MOVIEINFO_GENRE,MOVIEINFO_NATION,MOVIEINFO_YEAR,MOVIEINFO_GRADE,MOVIEINFO_TIME,MOVIEINFO_DATE,MOVIEINFO_STAR,MOVIEINFO_POSTER,MOVIEINFO_PLOT,MOVIEINFO_RATING) values (7,'윤희에게','멜로/로맨스','한국','2019','12세 관람가',105,to_date('19/11/14','RR/MM/DD'),6.67,'http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPK015144.jpg','다시 날 가슴 뛰게 만든 그 말 윤희에게, 잘 지내니? 평범한 일상을 살아가던 ''윤희'' 앞으로 도착한 한 통의 편지.편지를 몰래 읽어본 딸 ''새봄''은 편지의 내용을 숨긴 채 발신인이 살고 있는 곳으로 여행을 제안하고, ''윤희''는 비밀스러웠던 첫사랑의 기억으로 가슴이 뛴다.''새봄''과 함께 여행을 떠난 ‘윤희’는 끝없이 눈이 내리는 그곳에서 첫사랑을 만날지도 모른다는 기대를 품는데…',0.33);
Insert into BISCUIT.MOVIEINFO (MOVIEINFO_NUM,MOVIEINFO_TITLE,MOVIEINFO_GENRE,MOVIEINFO_NATION,MOVIEINFO_YEAR,MOVIEINFO_GRADE,MOVIEINFO_TIME,MOVIEINFO_DATE,MOVIEINFO_STAR,MOVIEINFO_POSTER,MOVIEINFO_PLOT,MOVIEINFO_RATING) values (9,'엔젤 해즈 폴른','액션, 스릴러','미국','2019','15세 관람가',121,to_date('19/11/13','RR/MM/DD'),0,'http://file.koreafilm.or.kr/thm/02/00/05/34/tn_DPF019275.jpg','사상 최대의 드론 테러 발생!대통령을 구한 영웅, 암살범이 되다!비밀 경호국 최고 요원 ‘배닝’(제라드 버틀러)의 엄호 중 ''트럼불'' 대통령(모건 프리먼)을 향한 초대형 규모의 드론 테러가 발생한다.가까스로 대통령을 구하고 유일하게 살아남은 ''배닝''은 완벽히 조작된 음모에 의해 대통령 암살사건의 테러범으로 지목되고, 국가 영웅은 한순간에 일급 수배자가 되어 FBI에게 쫓기게 되는데...',0);
Insert into BISCUIT.MOVIEINFO (MOVIEINFO_NUM,MOVIEINFO_TITLE,MOVIEINFO_GENRE,MOVIEINFO_NATION,MOVIEINFO_YEAR,MOVIEINFO_GRADE,MOVIEINFO_TIME,MOVIEINFO_DATE,MOVIEINFO_STAR,MOVIEINFO_POSTER,MOVIEINFO_PLOT,MOVIEINFO_RATING) values (12,'허슬러','범죄, 드라마','미국','2019','청소년 관람불가',110,to_date('19/11/27','RR/MM/DD'),0,'http://file.koreafilm.or.kr/thm/02/00/05/38/tn_DPF019483.jpg','HOT하고 HIP한 그녀들의 미친 한방!지금부터가 진짜 시작이다!뉴욕 상류층 클럽 최고의 리더 ‘라모나’는 완벽한 동료들과 함께 월가를 완전히 무너뜨릴 계획을 짠다. 달콤한 유혹으로 남자들의 자존심에 강타를 날리고 그녀들의 작전은 더 화끈해지고 치밀해지는데… 가장 매력적이고 가장 통쾌한 복수가 시작된다!',0);
Insert into BISCUIT.MOVIEINFO (MOVIEINFO_NUM,MOVIEINFO_TITLE,MOVIEINFO_GENRE,MOVIEINFO_NATION,MOVIEINFO_YEAR,MOVIEINFO_GRADE,MOVIEINFO_TIME,MOVIEINFO_DATE,MOVIEINFO_STAR,MOVIEINFO_POSTER,MOVIEINFO_PLOT,MOVIEINFO_RATING) values (15,'람보: 라스트 워','액션','미국','2019','청소년 관람불가',101,to_date('19/10/23','RR/MM/DD'),0,'http://file.koreafilm.or.kr/thm/02/00/05/33/tn_DPF019208.jpg','36년간 수많은 전쟁터의 중심에서 치열하게 싸운 ''존 람보''지옥 같은 전쟁 트라우마에서 벗어나 평화로운 시간을 보내는 것도 잠시, 딸처럼 여겼던 옆집 소녀가 멕시코 카르텔에게 납치된다.뼛속 깊이 각인되어 있던 그의 본능이 다시 깨어난다!‘람보’는 자신의 전투 본능과 살인 무기를 총동원해 자비 없이 적들을 처단하기 시작하는데...살아있는 액션 마스터 ''람보''의 귀환그의 마지막 전쟁이 시작된다!',0);
Insert into BISCUIT.MOVIEINFO (MOVIEINFO_NUM,MOVIEINFO_TITLE,MOVIEINFO_GENRE,MOVIEINFO_NATION,MOVIEINFO_YEAR,MOVIEINFO_GRADE,MOVIEINFO_TIME,MOVIEINFO_DATE,MOVIEINFO_STAR,MOVIEINFO_POSTER,MOVIEINFO_PLOT,MOVIEINFO_RATING) values (16,'날씨의 아이','애니메이션','일본','2019','15세 관람가',112,to_date('19/10/30','RR/MM/DD'),0,'http://file.koreafilm.or.kr/thm/02/00/05/34/tn_DPF019254.jpg','“그 빛 속으로 가보고 싶어”도쿄에 온 가출 소년 ‘호다카’는 오컬트 잡지사에 취직한다.연일 쏟아지는 빗방울과 함께 점차 삶에 지쳐가던 소년.그러던 어느 날, 소년의 눈앞에 한 소녀가 나타난다.“지금부터 맑아질 거야”그녀의 기도와 함께 거짓말처럼 비가 그치고 햇살이 떠오르기 시작하는데…그 여름날, 그 하늘 위에서 우리들은 세계의 형태를 결정적으로 바꾸어 버렸다',0);

--------------------------------------------------------
--  DDL for Index MOVIEINFO_TIMEINFONUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BISCUIT"."MOVIEINFO_TIMEINFONUM_PK" ON "BISCUIT"."MOVIEINFO" ("MOVIEINFO_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MOVIEINFO
--------------------------------------------------------

  ALTER TABLE "BISCUIT"."MOVIEINFO" ADD CONSTRAINT "MOVIEINFO_TIMEINFONUM_PK" PRIMARY KEY ("MOVIEINFO_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_DATE" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_TIME" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_GRADE" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_YEAR" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_NATION" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_GENRE" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."MOVIEINFO" MODIFY ("MOVIEINFO_TITLE" NOT NULL ENABLE);
