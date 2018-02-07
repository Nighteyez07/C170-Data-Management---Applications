DECLARE @customerId int;
DECLARE @productId int;
DECLARE @saleId int;

INSERT INTO Customer_3NF (LastName, FirstName, MiddleName, Address1, Address2, 
	City, Zip, State, CustomerHomePhone, CustomerMobilePhone, CustomerOtherPhone)
VALUES (
	'Nisbett', 'Duncan', 'Edward', '123 Main Street', 'Apt #B4', 
	'Denver', '49123', 'CO', '5551234567','5553219966','5559876543'
);

SELECT @customerId = SCOPE_IDENTITY();

INSERT INTO Product_3NF (Name, Description, UnitPrice) 
VALUES (
	'Glazed', 'Glazed Donut', 1.75
);

SELECT @productId = SCOPE_IDENTITY();

INSERT INTO Sales_3NF (OrderId, SaleDate, CustomerId, SpecialHandlingNotes)
VALUES (
	456, GetDate(), @customerId, 'Please include plates and napkins.'
);

SELECT @saleId = SCOPE_IDENTITY();

INSERT INTO Line_Item_3NF (OrderId, ProductId, Quantity)
VALUES (
	@saleId, @productId, 5
);