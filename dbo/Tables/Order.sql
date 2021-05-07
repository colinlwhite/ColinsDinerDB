CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderName] NVARCHAR(50) NOT NULL, 
    [OrderDate] DATETIME2 NOT NULL, 
    [FoodId] INT NOT NULL, 
    [Qauntity] INT NOT NULL, 
    [Total ] MONEY NOT NULL
)
