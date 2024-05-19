--Показать товары, цена которых меньше средней цены (Таблица Production.Product). Показать поля Name, Size и ListPrice.

select 
     p."Name"
    ,p."Size"
    ,p."ListPrice" 
from 
    "Production"."Product" p 
where 
    p."ListPrice" <
   		(
    	select avg ("ListPrice") as "AvgListPrice"
    	from "Production"."Product" p2 
    	where "ListPrice" > 0
		)