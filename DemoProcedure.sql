
Create procedure FilterPrice @listprice Numeric(15,2)
as
select * from dbo.bigproduct where listprice = @listprice

