select top 10*
from [HumanResources].[Department]

select *
from [HumanResources].[Department]

select *
from HumanResources.Department
order by name desc

select *
from HumanResources.Department
where GroupName like 's%' or GroupName like 'R%'
order by GroupName

select *
from HumanResources.Department
where 1<2

select *
from HumanResources.Department
where GroupName='Sales and Marketing'

select *
from HumanResources.Department
where GroupName='Quality Assurance' or GroupName='Manufacturing'

select *
from HumanResources.Department
where GroupName<> 'Research and Development'

select *
from HumanResources.Department
where name in ('Production','Executive','Finance')

select count(OnOrderQty) 
from [Purchasing].[ProductVendor]
where OnOrderQty is not Null

select *
from Purchasing.ProductVendor
where StandardPrice not between 40 and 45

select *
from Purchasing.ProductVendor
where UnitMeasureCode like 'C_ ' and OnOrderQty is not null

select *
from Purchasing.ProductVendor
order by StandardPrice desc,MaxOrderQty  




