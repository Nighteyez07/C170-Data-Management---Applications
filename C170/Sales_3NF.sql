CREATE TABLE [dbo].[Sales_3NF]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
	[OrderId] INT NOT NULL, 
	[SaleDate] DATE NOT NULL, 
	[CustomerId] INT NOT NULL, 
	[SpecialHandlingNotes] NVARCHAR(500) NULL,
	CONSTRAINT [PK_Sales_3NF] PRIMARY KEY (Id),
	CONSTRAINT [FK_Sales_Customer_3] FOREIGN KEY ([CustomerId]) REFERENCES [Customer_3NF]([CustomerId]), 
)
