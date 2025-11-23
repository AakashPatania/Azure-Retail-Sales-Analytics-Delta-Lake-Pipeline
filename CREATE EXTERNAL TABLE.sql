CREATE DATABASE SCOPED CREDENTIAL cred_aakash
WITH 
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver 
WITH 
(
    LOCATION = 'https://awstoragedatalakeap.blob.core.windows.net/silver',
    CREDENTIAL = cred_aakash
)    


CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
    LOCATION = 'https://awstoragedatalakeap.blob.core.windows.net/gold',
    CREDENTIAL = cred_aakash
)    

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
-------------------------

--- CREATE EXTERNAL TABLE EXTSALES


CREATE EXTERNAL TABLE gold.extsales
WITH 
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.sales


select *
From gold.extsales

---- for calendar

CREATE EXTERNAL TABLE gold.extcalendar
WITH 
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.calendar


Select *
From gold.extcalendar

---- for Customers

CREATE EXTERNAL TABLE gold.extcustomers
WITH 
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.customers


Select *
From gold.extcustomers


---- for products

CREATE EXTERNAL TABLE gold.extproducts
WITH 
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.products

Select *
From gold.extproducts


--- for product categories

CREATE EXTERNAL TABLE gold.extproductcat
WITH 
(
    LOCATION = 'extproductcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.product_categories

Select *
From gold.extproductcat


--- for Returns

CREATE EXTERNAL TABLE gold.extreturn
WITH 
(
    LOCATION = 'extreturn',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.returns

Select *
From gold.extreturn

--- for SUBCATEGORIES

CREATE EXTERNAL TABLE gold.extsub
WITH 
(
    LOCATION = 'extsub',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.subcat

Select *
From gold.extsub


--- for TERRITORIES

CREATE EXTERNAL TABLE gold.extter
WITH 
(
    LOCATION = 'extter',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.territories

Select *
From gold.extter


