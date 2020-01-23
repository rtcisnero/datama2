CREATE TABLE "MI181_CPMANING"."BILL" 
   (	"ID" NUMBER(15,0) NOT NULL ENABLE, 
	"HOT_NAME" VARCHAR2(45) NOT NULL ENABLE, 
	"CUS_FULLNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"BILL_DMG" NUMBER(15,0), 
	"HOTEL_ID" NUMBER(15,0) NOT NULL ENABLE, 
	 CONSTRAINT "BILL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

  CREATE TABLE "MI181_CPMANING"."CHECK_IN_SLIP" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"SLIP_CIN" DATE NOT NULL ENABLE, 
	"SLIP_COUT" DATE NOT NULL ENABLE, 
	"EMPLOYEE_ID" NUMBER(*,0) NOT NULL ENABLE, 
	 CONSTRAINT "CHECK_IN_SLIP_PKEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1

  CREATE TABLE "MI181_CPMANING"."CUSTOMER" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"CUS_FNAME" VARCHAR2(45), 
	"CUS_LNAME" VARCHAR2(45), 
	"CUS_INITIAL" VARCHAR2(45), 
	"CUS_FULLNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"CUS_ADD" VARCHAR2(45) NOT NULL ENABLE, 
	"CUS_CONT" NUMBER(*,0) NOT NULL ENABLE, 
	"CUS_EMAIL" VARCHAR2(45), 
	"CUS_CRDT" NUMBER(*,0) NOT NULL ENABLE, 
	"EMPLOYEE_ID" NUMBER(*,0) NOT NULL ENABLE, 
	"CHECK_IN_SLIP_ID" NUMBER(*,0) NOT NULL ENABLE, 
	 CONSTRAINT "CUSTOMER_PKEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1

  CREATE TABLE "MI181_CPMANING"."EMPLOYEE" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"EMP_FNAME" VARCHAR2(45), 
	"EMP_LNAME" VARCHAR2(45), 
	"EMP_INITIAL" VARCHAR2(45), 
	"EMP_FULLNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_ADD" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_CONT" NUMBER(*,0) NOT NULL ENABLE, 
	"EMP_EMAIL" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_TYPE" VARCHAR2(45) NOT NULL ENABLE, 
	 CONSTRAINT "EMPLOYEE_PKEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

  CREATE TABLE "MI181_CPMANING"."HOTEL" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"HOT_NAME" VARCHAR2(45), 
	"HOT_TYPE" VARCHAR2(45), 
	"HOT_ADD" VARCHAR2(255), 
	"HOT_CONT" NUMBER(*,0), 
	 CONSTRAINT "HOTEL_PKEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

  CREATE TABLE "MI181_CPMANING"."KEY" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"KEY_HOLDER" VARCHAR2(45) NOT NULL ENABLE, 
	 CONSTRAINT "KEY_PKEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

  CREATE TABLE "MI181_CPMANING"."ROOM" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"ROOM_TYPE" VARCHAR2(45) NOT NULL ENABLE, 
	"ROOM_CPCTY" NUMBER(*,0) NOT NULL ENABLE, 
	"ROOM_CONT" NUMBER(*,0) NOT NULL ENABLE, 
	"ROOM_PRICE" NUMBER(*,0) NOT NULL ENABLE, 
	"HOTEL_ID" NUMBER(*,0) NOT NULL ENABLE, 
	"KEY_ID" NUMBER(*,0) NOT NULL ENABLE, 
	 CONSTRAINT "ROOM_PKEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;