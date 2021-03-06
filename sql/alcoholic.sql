--------------------------------------------------------
--  File created - Th? ba-th�ng t�-16-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALCOHOLIC
--------------------------------------------------------

  CREATE TABLE "ANHQUOC4062"."ALCOHOLIC" 
   (	"IDALCOHOLIC" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"STRALCOHOLIC" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ANHQUOC4062.ALCOHOLIC
SET DEFINE OFF;
Insert into ANHQUOC4062.ALCOHOLIC (IDALCOHOLIC,STRALCOHOLIC) values ('1','Alcoholic');
Insert into ANHQUOC4062.ALCOHOLIC (IDALCOHOLIC,STRALCOHOLIC) values ('2','Non alcoholic');
Insert into ANHQUOC4062.ALCOHOLIC (IDALCOHOLIC,STRALCOHOLIC) values ('3','Optional alcohol');
--------------------------------------------------------
--  DDL for Index ALCOHOLIC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ANHQUOC4062"."ALCOHOLIC_PK" ON "ANHQUOC4062"."ALCOHOLIC" ("IDALCOHOLIC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ALCOHOLIC
--------------------------------------------------------

  ALTER TABLE "ANHQUOC4062"."ALCOHOLIC" MODIFY ("IDALCOHOLIC" NOT NULL ENABLE);
  ALTER TABLE "ANHQUOC4062"."ALCOHOLIC" ADD CONSTRAINT "ALCOHOLIC_PK" PRIMARY KEY ("IDALCOHOLIC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
