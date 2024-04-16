SELECT DATE_PART('YEAR', AGE(CURRENT_DATE,
max ("BirthDate"))) AS "MinData"
FROM "HumanResources"."Employee"
