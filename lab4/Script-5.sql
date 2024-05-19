--Показать товары, цена которых меньше средней цены в том же стиле (Таблица Production.Product). Показать поля Name, ListPrice и Style.
					
select 
     p."Name",
     p."ListPrice",
     p."Style"
from "Production"."Product" p
where p."ListPrice" < 
            (
            select avg(p2."ListPrice")
            from "Production"."Product" p2
            where p2."Style" = p."Style"
            )