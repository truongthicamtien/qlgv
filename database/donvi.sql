--------------------------------------------------------
--  File created - Wednesday-July-05-2023   
--------------------------------------------------------
-- Unable to render TABLE DDL for object THUCTAP.DONVI with DBMS_METADATA attempting internal generator.
ALTER TABLE DONVI
ADD CONSTRAINT DONVI_FK1 FOREIGN KEY
(
  DV_DVCHA 
)
REFERENCES DONVI
(
  DV_ID 
)
ON DELETE SET NULL ENABLECREATE TABLE DONVI 
(
  DV_ID NUMBER(*, 0) NOT NULL 
, DV_TEN VARCHAR2(50 BYTE) NOT NULL 
, DV_ID_DVTRUONG NUMBER 
, DV_DVCHA NUMBER 
, CONSTRAINT DONVI_PK PRIMARY KEY 
  (
    DV_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX DONVI_PK1 ON DONVI (DV_ID ASC) 
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
REM INSERTING into THUCTAP.DONVI
SET DEFINE OFF;
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (5,'BE',1,2);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (3,'Trung T�m Vi?n Th�ng 1,2,,3,4',1,2);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (4,'K? Thu?t - ??u T?',7,2);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (6,'Trung T�m C�ng Ngh? Th�ng Tin',2,2);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (156,'Trung T�m ?i?u H�nh Th�ng Tin',10,2);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (7,'Ph�ng Th?c T?p',4,2);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (1,'K? To�n - K? Ho?ch',10,null);
Insert into THUCTAP.DONVI (DV_ID,DV_TEN,DV_ID_DVTRUONG,DV_DVCHA) values (2,'Nh�n S? - T?ng H?p',10,null);
-- Unable to render TRIGGER DDL for object THUCTAP.DONVI_TRG with DBMS_METADATA attempting internal generator.
CREATE TRIGGER DONVI_TRG 
BEFORE INSERT ON DONVI 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.DV_ID IS NULL THEN
      SELECT DONVI_SEQ.NEXTVAL INTO :NEW.DV_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
