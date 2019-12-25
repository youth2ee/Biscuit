--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "BISCUIT"."CART" 
   (	"CART_NUM" NUMBER(8,0), 
	"MEMBER_ID" VARCHAR2(200 BYTE), 
	"STORE_NUM" NUMBER(5,0), 
	"CART_AMOUNT" NUMBER(4,0), 
	"CART_DATE" DATE DEFAULT sysdate
   );

Insert into BISCUIT.CART (CART_NUM,MEMBER_ID,STORE_NUM,CART_AMOUNT,CART_DATE) values (248,'admin',78,4,to_date('19/12/24','RR/MM/DD'));
Insert into BISCUIT.CART (CART_NUM,MEMBER_ID,STORE_NUM,CART_AMOUNT,CART_DATE) values (253,'admin',46,3,to_date('19/12/24','RR/MM/DD'));
Insert into BISCUIT.CART (CART_NUM,MEMBER_ID,STORE_NUM,CART_AMOUNT,CART_DATE) values (252,'daze123',46,1,to_date('19/12/24','RR/MM/DD'));
Insert into BISCUIT.CART (CART_NUM,MEMBER_ID,STORE_NUM,CART_AMOUNT,CART_DATE) values (254,'admin',49,1,to_date('19/12/24','RR/MM/DD'));
Insert into BISCUIT.CART (CART_NUM,MEMBER_ID,STORE_NUM,CART_AMOUNT,CART_DATE) values (255,'admin',48,2,to_date('19/12/24','RR/MM/DD'));
Insert into BISCUIT.CART (CART_NUM,MEMBER_ID,STORE_NUM,CART_AMOUNT,CART_DATE) values (256,'admin',81,1,to_date('19/12/24','RR/MM/DD'));

--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------
  ALTER TABLE "BISCUIT"."CART" MODIFY ("CART_DATE" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."CART" MODIFY ("STORE_NUM" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."CART" ADD PRIMARY KEY ("CART_NUM", "MEMBER_ID");
  ALTER TABLE "BISCUIT"."CART" MODIFY ("CART_AMOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "BISCUIT"."CART" ADD CONSTRAINT "CART_MEMBERID_FK" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BISCUIT"."MEMBER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BISCUIT"."CART" ADD CONSTRAINT "CART_STORENUM_FK" FOREIGN KEY ("STORE_NUM")
	  REFERENCES "BISCUIT"."STORE" ("STORE_NUM") ON DELETE CASCADE ENABLE;
