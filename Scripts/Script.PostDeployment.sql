/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists (select * from dbo.Food)
begin
insert into dbo.Food(Title, [Description], Price)
values ('All Meat Pizza','Bacon and Pepperoni Pizza', 3.99),
('Alabama Slammer Sandwich','unlimited white sauce included', 10.99),
('12 Wings & Fries','unlimited ranch sauces included', 4.99),
('The Gladiator', 'A great combination of pepperoni, sausage, and mozzarella.', 7.86)
end
