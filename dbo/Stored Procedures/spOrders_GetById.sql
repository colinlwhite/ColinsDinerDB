CREATE PROCEDURE [dbo].[spOrders_GetById]
	@id int
AS
begin
	select 
	[Id], [OrderName], [OrderDate], [FoodId], [Qauntity], [Total ] 
	from dbo.[Order]
	where Id = @id;
end
