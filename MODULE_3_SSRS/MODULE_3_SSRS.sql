--------------------------------SSRS CAR REPORT---------------------------------
CREATE TABLE TE_FA_REPORT_S (
    SupplierID float,
    SupplierAddress nvarchar(255),
    SupplierName nvarchar(255),
    SupplierContactDetails nvarchar(255),
    ProductID float,
    CarMaker nvarchar(255),
    CarModel nvarchar(255),
    CarColor nvarchar(255),
    CarModelYear float,
    CarPrice float,
    CustomerID nvarchar(255),
    CustomerName nvarchar(255),
    PhoneNumber nvarchar(255),
    City nvarchar(255),
    CountryCode nvarchar(255),
    CustomerAddress nvarchar(255),
    OrderDate datetime,
    OrderID nvarchar(255),
    ShipDate datetime,
    Shipping nvarchar(255),
    Sales float,
    Quantity float,
    Discount float
);

SELECT * FROM TE_FA_REPORT_S

---------------------------------SSRS REPORT----------------------------------------------
------------------------------SSRS LOAN SOURCE------------------------------------

CREATE TABLE TE_FA_LOAN_SSRS_S (
    LoanNr_ChkDgt float,
    Name nvarchar(255),
    City nvarchar(255),
    State nvarchar(255),
    Zip float,
    Bank nvarchar(255),
    BankState nvarchar(255),
    ApprovalFY float,
    SBA_Appv nvarchar(255),
    ApprovalDate datetime,
    DisbursementDate datetime
);

SELECT * FROM TE_FA_LOAN_SSRS_S



-----------------------------------------CAR SSRS----------------
CREATE TABLE TE_FA_LOAN_SSRS_C (
    LoanNr_ChkDgt float,
    Name nvarchar(255),
    City nvarchar(255),
    State nvarchar(255),
    Zip float,
    Bank nvarchar(255),
    BankState nvarchar(255),
    NAICS float,
    ApprovalDate datetime,
    ApprovalFY float,
    Term float,
    NoEmp float,
    NewExist float,
    CreateJob float,
    RetainedJob float,
    FranchiseCode float,
    UrbanRural float,
    RevLineCr nvarchar(255),
    LowDoc nvarchar(255),
    ChgOffDate datetime,
    DisbursementDate datetime,
    DisbursementGross nvarchar(255),
    BalanceGross nvarchar(255),
    MIS_Status nvarchar(255),
    ChgOffPrinGr nvarchar(255),
    GrAppv nvarchar(255),
    SBA_Appv nvarchar(255)
)

SELECT * FROM TE_FA_LOAN_SSRS_C













