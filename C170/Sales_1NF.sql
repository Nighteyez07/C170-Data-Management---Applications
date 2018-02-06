CREATE TABLE [dbo].[Sales_1NF]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
	[OrderId] INT NOT NULL, 
	[DonutId] INT NOT NULL, 
	[Name] NVARCHAR(50) NOT NULL, 
	[Description] NVARCHAR(250) NULL, 
	[UnitPrice] MONEY NULL, 
	[Quantity] INT NOT NULL, 
	[SaleDate] DATE NOT NULL,
	[SpecialHandlingNotes] NVARCHAR(500) NULL,
	[CustomerId] INT NULL,
	[CustomerFirstName] NVARCHAR(50) NULL, 
	[CustomerLastName] NVARCHAR(50) NULL, 
	[CustomerStreetAddress1] NVARCHAR(50) NULL, 
	[CustomerStreetAddress2] NVARCHAR(50) NULL, 
	[CustomerCity] NVARCHAR(50) NULL, 
	[CustomerState] NCHAR(2) NULL, 
	[CustomerZip] NCHAR(6) NULL, 
	[CustomerHomePhone] NCHAR(10) NULL, 
	[CustomerMobilePhone] NCHAR(10) NULL, 
	[CustomerOtherPhone] NCHAR(10) NULL,
	CONSTRAINT [PK_Sales_1NF] PRIMARY KEY (Id)
)
