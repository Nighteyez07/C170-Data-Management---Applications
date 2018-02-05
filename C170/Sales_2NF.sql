CREATE TABLE [dbo].[Sales_2NF]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [OrderId] INT NOT NULL, 
    [SaleDate] DATE NOT NULL, 
    [CustomerId] INT NOT NULL, 
    [ProductId] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [SpecialHandlingNotes] NVARCHAR(500) NULL,
    CONSTRAINT [FK_Sales_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer_2NF]([CustomerId]), 
    CONSTRAINT [FK_Sales_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product_2NF]([ProductId])
)
