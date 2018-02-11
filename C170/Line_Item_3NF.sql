CREATE TABLE [dbo].[Line_Item_3NF]
(
	[SaleId] INT NOT NULL, 
	[ProductId] INT NOT NULL, 
	[Quantity] INT NOT NULL
	CONSTRAINT [PK_Line_3NF] PRIMARY KEY ([ProductId],[SaleId]),
	CONSTRAINT [FK_Line_Product_3NF] FOREIGN KEY ([ProductId]) REFERENCES [Product_3NF]([ProductId]),
	CONSTRAINT [FK_Line_Sales_3NF] FOREIGN KEY ([SaleId]) REFERENCES [Sales_3NF]([SaleId])
)
