-------SCD TYPE 1-----------------------
------------------SOURCE DB---------------------
CREATE TABLE [TE_FA__Loan] (
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [ApprovalDate] datetime,
    [ApprovalFY] float,
    [DisbursementDate] datetime,
    [SBA_Appv] nvarchar(255)
)

SELECT * FROM TE_FA__Loan 

UPDATE TE_FA__Loan 
SET NAME='CARVEL' , STATE='CT', ZIP=45401 
WHERE LoanNr_ChkDgt=1000034009                      ----LINE 3


--------------------------------TARGET DB-------------------------------------
CREATE TABLE [TE_FA__Loan_Tar] (
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [ApprovalDate] datetime,
    [ApprovalFY] float,
    [DisbursementDate] datetime,
    [SBA_Appv] nvarchar(255)
)

SELECT * FROM TE_FA__Loan_Tar 




-----------------------SCD TYPE 2------------------------------
----------------SOURCE-------------------------
CREATE TABLE TE_FA_LOAN_S2 (
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [NAICS] float,
    [ApprovalDate] datetime,
    [ApprovalFY] float
)

SELECT * FROM TE_FA_LOAN_S2

ALTER TABLE TE_FA_LOAN_S2 ADD START_DATE DATE, END_DATE DATE, STATUS VARCHAR(20)

UPDATE TE_FA_LOAN_S2
SET Name='WHITLOCK DDS, TODD M.', City='NEW PARIS' , State='IN'
WHERE  LoanNr_ChkDgt= 1000014003;

UPDATE TE_FA_LOAN_S2
SET Name='BIG BUCKS PAWN & JEWELRY, LLC, TODD M.', City='NEW PARIS' , State='OK'
WHERE  LoanNr_ChkDgt= 1000024006;

UPDATE TE_FA_LOAN_S2
SET Name='ANASTASIA CONFECTIONS, INC.', City='ORLANDO' , State='IN'
WHERE  LoanNr_ChkDgt= 1000014003;

-------------------------scd type 2 target--------------------------------
CREATE TABLE TE_FA_LOAN_SCDTYPE2_TAR (
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [NAICS] float,
    [ApprovalDate] datetime,
    [ApprovalFY] float,
    START_DATE DATE,
    END_DATE DATE,
    STATUS VARCHAR(20)
)

SELECT * FROM TE_FA_LOAN_SCDTYPE2_TAR

---------------AGGREGATE------------------------------------------

CREATE TABLE TE_FA__CINEMA_AGGRE_S
( 
Film_Type	VARCHAR(20),
film_code	FLOAT,
cinema_code	 FLOAT,
total_sales	FLOAT,
tickets_sold FLOAT,
show_time	FLOAT,
occu_perc FLOAT,
ticket_price FLOAT,
capacity FLOAT
);

INSERT INTO TE_FA__CINEMA_AGGRE_S VALUES
('Romance',1490,304,3900000,26,4,4.26,150000,610),
('Romance',1491,352,3360000,42,5,8.08,80000,520),
('Romance',1492,489,2560000,32,4,20,80000,160),
('Romance',1493,429,1200000,12,1,11.01,100000,109),
('Romance',1494,524,1200000,15,3,16.67,80000,90),
('Romance',1495,71,1050000,7,3,0.98,150000,714),
('Romance',1496,163,1020000,10,3,7.69,102000,130),
('Romance',1497,450,750000,5,3,1.57,150000,318),
('Romance',1498,51,750000,11,2,0.95,68181.81818,1158),
('Romance',1499,522,600000,4,3,1.55,150000,258),
('Romance',1480,43,480000,6	,3,0.44,80000,1364),
('Romance',1481,529,480000,4,3,2.96,120000,135),
('Romance',1482,82,400000,5,6,0.53,80000,943),
('Romance',1483,344,300000,2,3,0.25,150000,800),
('Romance',1484,73,240000,2,1,2.04,120000,98),
('Romance',1485,304,16500000,112,4,8.33,147321.4286,611),
('Romance',1486,352,13950000,93,5,10.57,150000,880),
('Romance',1487,344,10200000,68,3,8.54,150000,796),
('Romance',1492,71,6600000,44,3,6.14,150000,717)

SELECT * FROM TE_FA__CINEMA_AGGRE_S 

--------------TARGET--------------------------------------
CREATE TABLE TE_FA__CINEMA_AGGRE_T (
    total_sales float,
    tickets_sold float,
    ticket_price float,
    film_code numeric(20,0)
)

SELECT * FROM TE_FA__CINEMA_AGGRE_T











