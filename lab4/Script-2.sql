--Ранжирование сотрудников по должности в алфавитном порядке. ("HumanResources"."Employee"). 
--Примечание к ранжированию – ранг может начинаться с произвольного числа (например, 2 или 5), главное – ранг не должен уменьшаться.	

select e1."JobTitle", 
       (select count(*) 
        from "HumanResources"."Employee" e2 
        where e2."JobTitle" <= e1."JobTitle") as Rank
from "HumanResources"."Employee" e1
order by e1."JobTitle"