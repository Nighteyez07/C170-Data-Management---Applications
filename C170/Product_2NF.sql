CREATE TABLE [dbo].[Product_2NF]
(
	[ProductId] INT NOT NULL IDENTITY(1,1), 
	[Name] NVARCHAR(50) NOT NULL, 
	[Description] NVARCHAR(250) NOT NULL, 
	[UnitPrice] MONEY NOT NULL,
	CONSTRAINT [PK_Product_2NF] PRIMARY KEY (ProductId)
)
