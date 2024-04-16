SELECT DISTINCT "ProductLine"
FROM "Production"."Product"
WHERE "ListPrice" IS NOT NULL
GROUP BY "ProductLine"
HAVING MAX("ListPrice") > 3000