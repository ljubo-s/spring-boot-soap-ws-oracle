DELETE FROM SOAPAPP.SOAPFAULT;
DELETE FROM SOAPAPP.SOAPREQUEST;

DROP SEQUENCE SOAPAPP.SOAPFAULT_SEQUENCE;
DROP SEQUENCE SOAPAPP.SOAPREQUEST_SEQUENCE;

DROP TABLE SOAPAPP.SOAPFAULT PURGE;
DROP TABLE SOAPAPP.SOAPREQUEST PURGE;

--------------------------------------------------------
--  DDL for Sequence SOAPREQUEST_SEQUENCE
--------------------------------------------------------
   CREATE SEQUENCE  "SOAPAPP"."SOAPREQUEST_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SOAPFAULT_SEQUENCE
--------------------------------------------------------
   CREATE SEQUENCE  "SOAPAPP"."SOAPFAULT_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
   
--------------------------------------------------------
--  DDL for Table SOAPREQUEST
--------------------------------------------------------
  CREATE TABLE "SOAPAPP"."SOAPREQUEST" 
   ("ID" NUMBER(19,2),
	"REQUEST_DATA" VARCHAR2(1000 CHAR),
	"RESPONSE_DATA" VARCHAR2(100 CHAR),
	"METHOD_NAME" VARCHAR2(150 CHAR),	
	"ACTIVITY_DATE" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SOAPFAULT
--------------------------------------------------------
  CREATE TABLE "SOAPAPP"."SOAPFAULT" 
   (
	"ID" NUMBER(19,2),
	"FAULT_CODE" VARCHAR2(4000),
	"FAULT_MESSAGE" VARCHAR2(4000),
	"TRACE_DATA" VARCHAR2(4000),
	"LOG_DATE" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;  
  
--------------------------------------------------------
--  DDL for Index SOAPFAULT_I
--------------------------------------------------------
  CREATE UNIQUE INDEX "SOAPAPP"."SOAPFAULT_I" ON "SOAPAPP"."SOAPFAULT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;  
--------------------------------------------------------
--  DDL for Index SOAPREQUEST_I
--------------------------------------------------------
  CREATE UNIQUE INDEX "SOAPAPP"."SOAPREQUEST_I" ON "SOAPAPP"."SOAPREQUEST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;  
  
--------------------------------------------------------
--  Constraints for Table SOAPFAULT
--------------------------------------------------------
  ALTER TABLE "SOAPAPP"."SOAPFAULT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOAPAPP"."SOAPFAULT" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SOAPREQUEST
--------------------------------------------------------
  ALTER TABLE "SOAPAPP"."SOAPREQUEST" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOAPAPP"."SOAPREQUEST" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;  