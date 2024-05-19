--Вывести название должности сотрудника, а также название должности сотрудника, имеющего большее количество отпускных часов.
--Учитывать только действующих сотрудников. ("HumanResources"."Employee").

select e1."JobTitle", 
       (select e2."JobTitle" 
        from "HumanResources"."Employee" e2
        where e2."VacationHours" = 
        							(
        							select max(e3."VacationHours") 
                                    from "HumanResources"."Employee" e3
                                    where e3."CurrentFlag" = 1
                                    )
        and e2."CurrentFlag" = 1
        limit 1) as "MaxHoursJobTitle"
from "HumanResources"."Employee" e1
where e1."CurrentFlag" = 1