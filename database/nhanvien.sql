--------------------------------------------------------
--  File created - Wednesday-July-05-2023   
--------------------------------------------------------
-- Unable to render TABLE DDL for object THUCTAP.NHANVIEN with DBMS_METADATA attempting internal generator.
ALTER TABLE NHANVIEN
ADD CONSTRAINT FK_NHANVIEN_DONVI FOREIGN KEY
(
  DV_ID 
)
REFERENCES DONVI
(
  DV_ID 
)
ON DELETE SET NULL ENABLECREATE TABLE NHANVIEN 
(
  NV_ID NUMBER NOT NULL 
, NV_STT VARCHAR2(20 BYTE) 
, NV_TEN VARCHAR2(20 BYTE) 
, NV_QUYEN VARCHAR2(20 BYTE) 
, NV_TAIKHOAN VARCHAR2(20 BYTE) NOT NULL 
, NV_MATKHAU VARCHAR2(255 BYTE) NOT NULL 
, NV_QUYENTHAMDINH VARCHAR2(20 BYTE) 
, DV_ID NUMBER 
, NV_SDT VARCHAR2(20 BYTE) 
, NV_DIACHI VARCHAR2(100 BYTE) 
, CONSTRAINT NHANVIEN_PK PRIMARY KEY 
  (
    NV_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX NHANVIEN_PK ON NHANVIEN (NV_ID ASC) 
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
REM INSERTING into THUCTAP.NHANVIEN
SET DEFINE OFF;
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (9,'9','Thanh Tr?ng','nv','trong09','$2y$10$Gd6XXuPCJQUJP9mzcp3nDeFD9vcA/xQQhBSz9aEwRHja824K6RNSK','0',4,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (1,'1','Th? Anh','ld','anh01','$2y$10$k38TLghq0/F.7LYPyYlt4uuEO70uwmO2eS7WElWuSNDJAinLmmdty','1',3,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (3,'3','Thanh Quy?n','nv','quyen03','$2y$10$rZs21xfwbpk5n/0pd2r19.bG3QJUk2AXNl7jiQYKDV3dzKQzHEr3O','0',2,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (2,'2','C?m Ti�n','nv','tien02','$2y$10$k38TLghq0/F.7LYPyYlt4uuEO70uwmO2eS7WElWuSNDJAinLmmdty','0',6,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (4,'4','Ph�c Th?nh','nv','thinh04','$2y$10$YVT8gM12.g.C7HqWQHNVbuG2fVumHchHnyyU7v/YrsytrTqCHmqpm','1',7,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (5,'5','Qu?c H?u','nv','hau05','$2y$10$/HsWdoFUo99kZNuVjPYYfOgxqOmCtlp1yptyPnLjtslns25pLABdi','0',1,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (6,'6','B�ch Tr�m','nv','tram06','$2y$10$zF9Vf80gLq6ukKm8dkqgiu2Vmb.jW1fktS8r1DBaIzQ4dx1piFJHC','0',5,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (7,'7','V?n Th?ch','nv','thach07','$2y$10$zF9Vf80gLq6ukKm8dkqgiu2Vmb.jW1fktS8r1DBaIzQ4dx1piFJHC','1',4,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
Insert into THUCTAP.NHANVIEN (NV_ID,NV_STT,NV_TEN,NV_QUYEN,NV_TAIKHOAN,NV_MATKHAU,NV_QUYENTHAMDINH,DV_ID,NV_SDT,NV_DIACHI) values (8,'8','C�ng T??ng','nv','tuong08','$2y$10$9Vzc250zicYcxDyifv0LHeVDVImwkNZG0VTKj23cLNPZZ9Qzyg.fW','0',4,'0337095322','T�a nh� VNPT, Th�nh ph? H� N?i, Vi?t Nam');
-- Unable to render TRIGGER DDL for object THUCTAP.NHANVIEN_TRG with DBMS_METADATA attempting internal generator.
CREATE TRIGGER NHANVIEN_TRG 
BEFORE INSERT ON NHANVIEN 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
-- Unable to render TRIGGER DDL for object THUCTAP.NHANVIEN_TRG1 with DBMS_METADATA attempting internal generator.
CREATE TRIGGER NHANVIEN_TRG1 
BEFORE INSERT ON NHANVIEN 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
