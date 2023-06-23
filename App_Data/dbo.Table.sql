CREATE TABLE [dbo].[tableOrderDetails]
(
	[oid] VARCHAR(MAX) NOT NULL PRIMARY KEY, 
    [orderid] INT NOT NULL, 
    [productid] INT NOT NULL, 
    [productname] VARCHAR(50) NOT NULL, 
    [price] DECIMAL NOT NULL, 
    [quantity] INT NOT NULL, 
    [orderdate] VARCHAR(50) NOT NULL
)
