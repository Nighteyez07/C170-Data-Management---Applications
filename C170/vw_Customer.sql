CREATE VIEW [dbo].[vw_Customer] AS 
	SELECT CONCAT(FirstName, ' ', LastName) AS Name, LastName, Firstname, MiddleName, Address1, Address2, City, State, Zip, CustomerHomePhone, CustomerMobilePhone, CustomerOtherPhone 
	FROM [Customer_3NF]
