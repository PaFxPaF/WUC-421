
select distinct s1."CustomerID"
from "Sales"."SalesOrderHeader" s1
inner join "Sales"."SalesOrderHeader" s2
on s1."CustomerID" = s2."CustomerID" 
where s1."Freight" <> s2."Freight" and s1."Freight" >= 50;
