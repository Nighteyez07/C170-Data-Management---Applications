CREATE TABLE [dbo].[Line_Item_2NF]
(
	[ProductId] INT NOT NULL, 
	[SaleId] INT NOT NULL, 
	[Quantity] NCHAR(10) NOT NULL, 
	CONSTRAINT [FK_Line_Item_2NF_Sale] FOREIGN KEY ([SaleId]) REFERENCES [Sales_2NF]([SaleId]),
	CONSTRAINT [FK_Line_Item_2NF_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product_2NF]([ProductId]), 
	CONSTRAINT [PK_Line_Item_2NF] PRIMARY KEY ([SaleId], [ProductId])
)
