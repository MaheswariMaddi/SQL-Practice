--Aggregate Functions
select min(name)
from [Sales].[Currency]

select min(modifiedDate),max(modifieddate)
from [Sales].[CurrencyRate]

select *
from sales.CurrencyRate
where ToCurrencyCode in ('ARS','AUD')

select sum(AverageRate)
from sales.CurrencyRate
where ToCurrencyCode not in('ars')

select max(averagerate),min(averagerate)
from sales.CurrencyRate

select sum(averagerate)
from Sales.CurrencyRate
where ToCurrencyCode in ('VEB','DEM')

SELECT AVG(ENDOFDAYRATE)
FROM SALES.CurrencyRATE

SELECT COUNT(20)+10
FROM  SALES.CurrencyRate

SELECT *
FROM [Production].[ProductModel]
WHERE CatalogDescription IS NOT NULL OR Instructions IS NOT NULL

SELECT *
FROM [HumanResources].[EmployeeDepartmentHistory]
ORDER BY SHIFTID


