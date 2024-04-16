select SUM("ListPrice") AS "SumPrice"
FROM "Production"."Product"
WHERE "Size"  = '40' AND "Color" LIKE 'Black%'
