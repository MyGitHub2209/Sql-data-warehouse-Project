/*
CREATE DATABASE SCHEMA 
This script creates a new database name 'datawarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Addiionally, the script sets up three schemas within the database: 
branze, silver, gold.
Hence ensure having a backup before running the script.
*/


USE Master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
  BEGIN
      ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE DataWarehouse;
END;
GO
  
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO
  
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
