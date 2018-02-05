CREATE TABLE [dbo].[Product_2NF]
(
	[ProductId] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(250) NOT NULL, 
    [UnitPrice] MONEY NOT NULL
)
