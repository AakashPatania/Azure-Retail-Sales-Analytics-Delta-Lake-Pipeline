----- CREATE VIEW CALENDAR

Create VIEW gold.calendar
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Calender/',
            FORMAT = 'PARQUET'

    ) AS Quer1


 ----- CREATE VIEW CUSTOMERS


Create VIEW gold.customers
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'

    ) AS Quer1  



----- CREATE VIEW PRODUCTS

Create VIEW gold.products
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'

    ) AS Quer1  


----- CREATE VIEW PRODUCT CATEGORIES


Create VIEW gold.product_categories
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_ProductCategories/',
            FORMAT = 'PARQUET'

    ) AS Quer1  


------ CREATE VIEW RETURNS


Create VIEW gold.returns
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'

    ) AS Quer1  


----- CREATE VIEW SALES  

Create VIEW gold.Sales
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'

    ) AS Quer1  


------ CREATE VIEW SUBCATEGORIES

Create VIEW gold.subcat
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Subcategories/',
            FORMAT = 'PARQUET'

    ) AS Quer1  


---- CREATE VIEW TERRITORIES

Create VIEW gold.territories
AS
SELECT *
FROM 
    OPENROWSET 
         (
            BULK 'https://awstoragedatalakeap.blob.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'

    ) AS Quer1  



