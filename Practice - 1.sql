--1. From the following table write a query in SQL to retrieve all rows and columns from the employee table in the Adventureworks database. Sort the result set in ascending order on jobtitle.
SELECT *
FROM HumanResources.Employee
ORDER BY JobTitle

--2--From the following table write a query in SQL to retrieve all rows and columns from the employee table using table aliasing in the Adventureworks database. Sort the output in ascending order on lastname.
SELECT *
FROM PERSON.Person
ORDER BY LastName

--3. From the following table write a query in SQL to return all rows and a subset of the columns (FirstName, LastName, businessentityid) from the person table in the AdventureWorks database. The third column heading is renamed to Employee_id. Arranged the output in ascending order by lastname.
SELECT FIRSTNAME,LASTNAME,BusinessEntityID Employee_id
FROM Person.Person 
order by LastName

--4. From the following table write a query in SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'. Return productid, productnumber, and name. Arranged the output in ascending order on name.
SELECT ProductID,ProductNumber,Name
from PRODUCTION.PRODUCT
WHERE SellStartDate IS NOT NULL AND ProductLine='T'
order by Name

--5. From the following table write a query in SQL to return all rows from the salesorderheader table in Adventureworks database and calculate the percentage of tax on the subtotal have decided. Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. Arranged the result set in ascending order on subtotal.
select salesorderid, customerid, orderdate,subtotal,(TaxAmt*100)/SubTotal tax_percentage 
from sales.SalesOrderHeader
order by SubTotal  

--6. From the following table write a query in SQL to create a list of unique jobtitles in the employee table in Adventureworks database. Return jobtitle column and arranged the resultset in ascending order.
SELECT DISTINCT JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle

--7. From the following table write a query in SQL to calculate the total freight paid by each customer. Return customerid and total freight. Sort the output in ascending order on customerid.
SELECT customerid,SUM(freight)
FROM SALES.SALESORDERHEADER
group by CustomerID
order by CustomerID

--8. From the following table write a query in SQL to find the average and the sum of the subtotal for every customer. Return customerid, average and sum of the subtotal. Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order.
SELECT CustomerID,salespersonid,AVG(subtotal) Avg_subtotal,sum(subtotal) Sumof_subtotal
FROM SALES.SALESORDERHEADER
group by CustomerID,SalesPersonID
order by CustomerID desc

--9. From the following table write a query in SQL to retrieve total quantity of each productid which are in shelf of 'A' or 'C' or 'H'. Filter the results for sum quantity is more than 500. Return productid and sum of the quantity. Sort the results according to the productid in ascending order.
select PRODUCTID,SUM(QUANTITY) Sumofquantity
from Production.ProductInventory
WHERE Shelf in ('A','C','H')
group by ProductID
having sum(Quantity)>500
ORDER BY ProductID

--10. From the following table write a query in SQL to find the total quentity for a group of locationid multiplied by 10.
select sum(Quantity)
from Production.ProductInventory
group by (LocationID*10);

--11. From the following tables write a query in SQL to find the persons whose last name starts with letter 'L'. Return BusinessEntityID, FirstName, LastName, and PhoneNumber. Sort the result on lastname and firstname.
select p.BusinessEntityID, FirstName, LastName,PhoneNumber
from Person.Person p join Person.PersonPhone pp on p.BusinessEntityID=pp.BusinessEntityID
where LastName like 'L%'
order by LastName,FirstName

--12. From the following table write a query in SQL to find the sum of subtotal column. Group the sum on distinct salespersonid and customerid. Rolls up the results into subtotal and running total. Return salespersonid, customerid and sum of subtotal column i.e. sum_subtotal.
select SalesPersonID,CustomerID,sum(SubTotal) sum_subtotal
from sales.SalesOrderHeader
where SalesPersonID is not null
group by SalesPersonID,CustomerID
order by SalesPersonID,CustomerID

--13. From the following table write a query in SQL to find the sum of the quantity of all combination of group of distinct locationid and shelf column. Return locationid, shelf and sum of quantity as TotalQuantity.
select LocationID,Shelf,sum(quantity) TotalQuantity
from Production.ProductInventory
group by LocationID,Shelf

--14. From the following table write a query in SQL to find the sum of the quantity with subtotal for each locationid. Group the results for all combination of distinct locationid and shelf column. Rolls up the results into subtotal and running total. Return locationid, shelf and sum of quantity as TotalQuantity.

select LocationID,Shelf,sum(Quantity) TotalQuantity
from Production.ProductInventory
group by LocationID,Shelf

--15. From the following table write a query in SQL to find the total quantity for each locationid and calculate the grand-total for all locations. Return locationid and total quantity. Group the results on locationid.
select locationid,sum(quantity)
from Production.ProductInventory
group by LocationID
