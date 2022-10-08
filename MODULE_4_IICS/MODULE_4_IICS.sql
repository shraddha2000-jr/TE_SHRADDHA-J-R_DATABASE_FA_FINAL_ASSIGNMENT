----------------IICS-------------------------------------
-------------------------SOURCE--------------------
CREATE TABLE TE_FA_HEALTH_S (
    PID float,
    AGE float,
    GENDER nvarchar(255),
    CATEGORY_NAME nvarchar(255),
    DISTRICT_NAME nvarchar(255),
    PREAUTH_AMT float,
    CLAIM_AMOUNT float,
    HOSP_NAME nvarchar(255),
    SURGERY_DATE datetime,
    DISCHARGE_DATE datetime
)

SELECT * FROM TE_FA_HEALTH_S

-----------------------------MAPPING FROM TE_FA_HEALTH_S TO TE_FA_HEALTH_T----------------------------
SELECT * FROM TE_FA_HEALTH_T


--------------------AGGREGATE--------------------------------------
select * from TE_FA_HEALTH_AGGRE

-----------------------SCD TYPE 1----------------------------------------------

CREATE TABLE TE_FA_HEALTH_SCD
( 
PID float,
CATEGORY_NAME nvarchar(255),
HOSP_NAME nvarchar(255),
PREAUTH_AMT float,
CLAIM_AMOUNT float
);

select * from TE_FA_HEALTH_SCD

insert into TE_FA_HEALTH_SCD values
(1,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(2,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(3,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(4,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(5,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(6,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(7,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846),
(8,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846),
(9,'CARDIOLOGY','Karumuri Hospital',30000,30000),
(10,'CARDIOLOGY','Karumuri Hospital',40000,40000),
(11,'PEDIATRICS','Area Hospital Cheerala',35000,25000),
(12,'ORTHOPEDIC  SURGERY AND PROCEDURES','7 STAR SUPER SPECIALITY HOSPITAL',34114,34114)

UPDATE TE_FA_HEALTH_SCD
SET CATEGORY_NAME='PEDIATRICS', HOSP_NAME='Karumuri Hospital'
WHERE PID=2

CREATE TABLE TE_FA_HEALTH_SCD_TAR
( 
PATIENT_KEY FLOAT,
PATIENT_ID float,
CAT_NAME nvarchar(255),
H_NAME nvarchar(255),
Checksum  nvarchar(255),
P_AMT float,
C_AMOUNT float
);

select * from TE_FA_HEALTH_SCD_TAR




------------------------------------------SCD TYPE 2-------------------

-------------------------SOURCE--------------------------
CREATE TABLE TE_FA_HEALTH_SCD_TYPE2_S
( 
PID float,
CATEGORY_NAME nvarchar(255),
HOSP_NAME nvarchar(255),
PREAUTH_AMT float,
CLAIM_AMOUNT float
);

select * from TE_FA_HEALTH_SCD_TYPE2_S

insert into TE_FA_HEALTH_SCD_TYPE2_S values
(1,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(2,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(3,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(4,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(5,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(6,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000),
(7,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846),
(8,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846),
(9,'CARDIOLOGY','Karumuri Hospital',30000,30000),
(10,'CARDIOLOGY','Karumuri Hospital',40000,40000),
(11,'PEDIATRICS','Area Hospital Cheerala',35000,25000),
(12,'ORTHOPEDIC  SURGERY AND PROCEDURES','7 STAR SUPER SPECIALITY HOSPITAL',34114,34114)

UPDATE TE_FA_HEALTH_SCD_TYPE2_S
SET CATEGORY_NAME='PEDIATRICS'
WHERE PID=3

UPDATE TE_FA_HEALTH_SCD_TYPE2_S
SET CATEGORY_NAME='PEDIATRICS', HOSP_NAME='7 STAR SUPER SPECIALITY HOSPITAL'
WHERE PID=2


--------------------------TARGET-----------------------------
CREATE TABLE TE_FA_HEALTH_SCD_TYPE2_TAR
( 
PATIENT_KEY FLOAT,
PATIENT_ID float,
CAT_NAME nvarchar(255),
H_NAME nvarchar(255),
Checksum  nvarchar(255),
P_AMT float,
C_AMOUNT float,
START_DATE DATE,
END_DATE DATE
);

select * from TE_FA_HEALTH_SCD_TYPE2_TAR
