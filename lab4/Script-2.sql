--Ранжирование сотрудников по должности в алфавитном порядке. ("HumanResources"."Employee"). 
--Примечание к ранжированию – ранг может начинаться с произвольного числа (например, 2 или 5), главное – ранг не должен уменьшаться.	

select e."JobTitle" 
		,rank() over (order by e."JobTitle" ) as Rank
from "HumanResources"."Employee" e  
order by e."JobTitle" 