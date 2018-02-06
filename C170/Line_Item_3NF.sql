CREATE TABLE [dbo].[Line_Item_3NF]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
	[OrderId] INT NOT NULL, 
	[ProductId] INT NOT NULL, 
	[Quantity] INT NOT NULL
	CONSTRAINT [PK_Line_3NF] PRIMARY KEY (Id),
	CONSTRAINT [FK_Line_Product_3NF] FOREIGN KEY ([ProductId]) REFERENCES [Product_3NF]([ProductId]),
	CONSTRAINT [FK_Line_Sales_3NF] FOREIGN KEY ([OrderId]) REFERENCES [Sales_3NF]([Id])
)
