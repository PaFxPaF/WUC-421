--Выдавать ассортимент товара, находящегося на складе:
select 
     p."ID" as "Product_ID"
    ,p."Article" as "Product_Article"
    ,p."Name"  as "Product_Name"
    ,p."Cell_ID" as "Product_Cell"
from 
    "Products" p 
join 
    "Cells" c  on "c"."ID"  = p."Cell_ID"
where 
     c."Warehouse_ID"  = 201;

   --Показывать список клиентов, имеющих скидку:
select 
	 d."ID" as "Discount_ID"
	,d."Counterparty_ID" as "Counterparty_ID"
	,d."DateStart" as "DateStart"
	,d."DateEnd" as "DateEnd"
	,d."Discount_amount" as "Discount_amount"
from "Discounts" d 
join 
    "Counterparties" c on d."Counterparty_ID" = c."ID"
where 
    d."Discount_amount" > 0;

