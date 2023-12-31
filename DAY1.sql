SELECT COUNT(*) 
FROM [HumanResources].[Employee]
WHERE MaritalStatus='S' AND Gender='F';

SELECT JobTitle 
FROM [HumanResources].[Employee]
WHERE MaritalStatus='S' AND Gender='F';

SELECT *
FROM [HumanResources].[Employee]
WHERE OrganizationLevel IS NULL OR OrganizationNode IS NULL

SELECT *
FROM [HumanResources].[Department]

SELECT TOP 5*
FROM [HumanResources].[Employee]

SELECT JobTitle,MaritalStatus MS
FROM [HumanResources].[Employee]


