﻿CREATE TABLE [dbo].[Sales_2NF]
(
	[SaleId] INT NOT NULL IDENTITY(1,1), 
	[SaleDate] DATE NOT NULL, 
	[CustomerId] INT NOT NULL, 
	[ProductId] INT NOT NULL, 
	[Quantity] INT NOT NULL, 
	[SpecialHandlingNotes] NVARCHAR(500) NULL,
	CONSTRAINT [PK_Sales_2NF] PRIMARY KEY ([SaleId]),
	CONSTRAINT [FK_Sales_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer_2NF]([CustomerId]), 
	CONSTRAINT [FK_Sales_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product_2NF]([ProductId])
)
