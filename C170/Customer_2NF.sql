CREATE TABLE [dbo].[Customer_2NF]
(
	[CustomerId] INT NOT NULL PRIMARY KEY, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [MiddleName] NVARCHAR(50) NULL, 
    [Address1] NVARCHAR(250) NOT NULL, 
    [Address2] NVARCHAR(250) NULL, 
    [City] NVARCHAR(50) NOT NULL, 
    [State] NCHAR(2) NOT NULL, 
    [Zip] NCHAR(6) NOT NULL,
	[CustomerHomePhone] NCHAR(10) NULL, 
    [CustomerMobilePhone] NCHAR(10) NULL, 
    [CustomerOtherPhone] NCHAR(10) NULL
)
