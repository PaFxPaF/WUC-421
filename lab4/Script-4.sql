--Вывести название должности сотрудника, а также название должности сотрудника, имеющего большее количество отпускных часов.
--Учитывать только действующих сотрудников. ("HumanResources"."Employee").

select e1."JobTitle"  as "MaxHoursJobTitle"
from "HumanResources"."Employee" e1 
	where e1."VacationHours" = 
						(
						select max(e2."VacationHours")
						from "HumanResources"."Employee" e2
						where e2."CurrentFlag" =1
						)
	and e1."CurrentFlag" = 1;