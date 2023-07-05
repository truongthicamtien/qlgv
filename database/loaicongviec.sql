--------------------------------------------------------
--  File created - Wednesday-July-05-2023   
--------------------------------------------------------
-- Unable to render TABLE DDL for object THUCTAP.LOAICONGVIEC with DBMS_METADATA attempting internal generator.
CREATE TABLE LOAICONGVIEC 
(
  LCV_ID NUMBER NOT NULL 
, LCV_TEN VARCHAR2(20 BYTE) NOT NULL 
, CONSTRAINT LOAICONGVIEC_PK PRIMARY KEY 
  (
    LCV_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LOAICONGVIEC_PK ON LOAICONGVIEC (LCV_ID ASC) 
      LOGGING 
      TABLESPACE USERS 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 1048576 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE USERS 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  BUFFER_POOL DEFAULT 
) 
NOCOMPRESS 
NOPARALLEL
REM INSERTING into THUCTAP.LOAICONGVIEC
SET DEFINE OFF;
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (1,'L?p trình');
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (2,'L? Tân');
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (3,'H? tr?');
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (4,'K? Toán');
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (5,'Tài Chính');
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (6,'Nhân S?');
Insert into THUCTAP.LOAICONGVIEC (LCV_ID,LCV_TEN) values (7,'H??ng d?n');
