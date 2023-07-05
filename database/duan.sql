--------------------------------------------------------
--  File created - Wednesday-July-05-2023   
--------------------------------------------------------
-- Unable to render TABLE DDL for object THUCTAP.DUAN with DBMS_METADATA attempting internal generator.
CREATE TABLE DUAN 
(
  DA_ID NUMBER NOT NULL 
, DA_MADA VARCHAR2(20 BYTE) 
, DA_TEN VARCHAR2(100 BYTE) 
, CONSTRAINT DUAN_PK PRIMARY KEY 
  (
    DA_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX DUAN_PK ON DUAN (DA_ID ASC) 
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
REM INSERTING into THUCTAP.DUAN
SET DEFINE OFF;
Insert into THUCTAP.DUAN (DA_ID,DA_MADA,DA_TEN) values (1,'DTPTW','??u t? phát tri?n web');
Insert into THUCTAP.DUAN (DA_ID,DA_MADA,DA_TEN) values (2,'DTPTA','??u t? phát tri?n android App');
Insert into THUCTAP.DUAN (DA_ID,DA_MADA,DA_TEN) values (3,'TB','team building');
Insert into THUCTAP.DUAN (DA_ID,DA_MADA,DA_TEN) values (4,'PTCDM','phát tri?n c?ng ??ng m?ng');
-- Unable to render TRIGGER DDL for object THUCTAP.DUAN_TRG with DBMS_METADATA attempting internal generator.
CREATE TRIGGER DUAN_TRG 
BEFORE INSERT ON DUAN 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.DA_ID IS NULL THEN
      SELECT DUAN_SEQ.NEXTVAL INTO :NEW.DA_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
