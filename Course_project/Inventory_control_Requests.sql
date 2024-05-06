--Ассортимент товаров заказанные контрагентом:
select 
    "Product_ID" as "Product_ID"
    ,"Article" as "Product_Article"
    ,"Name" as "Product_Name"
from 
    "Products"
join 
    "Orders" on "Orders"."Product_ID" = "Products"."ID"
where 
    "Orders"."Counterparty_ID" = 302;

   --Ассортимент товаров на складе:
select 
     c."ID"  as "Product_ID"
    ,c."Cell_number"  as "Cell_number"
    ,c."Warehouse_ID"  as "Warehouse_ID"  
    ,w."Name" as "Warehouse_Name"
    ,w."Address" as "Address"
from 
    "Cells" c 
join 
    "Warehouses" w on c."Warehouse_ID" = w."ID"
where 
    c."Warehouse_ID" = 203;