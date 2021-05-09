CREATE PROCEDURE [dbo].[spOrders_Insert]
	@orderName nvarchar(50),
	@orderDate datetime2(7),
	@FoodId int,
	@Quantity int,
	@Total money,
	@Id int output
AS
begin
	set nocount on;
	insert into dbo.[Order](OrderName, OrderDate, FoodId, Quantity, Total)
	values (@OrderName, @OrderDate, @FoodId, @Quantity, @Total)

	set @Id = SCOPE_IDENTITY();
end
