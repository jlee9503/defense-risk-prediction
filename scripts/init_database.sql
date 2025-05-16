USE master;
GO

-- Check if the database already exists and drop it if it does
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  DROP DATABASE DataWarehouse;
END
GO

CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create the tables
IF OBJECT_ID('dbo.contracts', 'U') IS NOT NULL
  DROP TABLE dbo.contracts;

CREATE TABLE dbo.contracts
(
  contract_id VARCHAR(20) PRIMARY KEY,
  supplier_id VARCHAR(20),
  contract_value_million FLOAT,
  contract_type VARCHAR(50),
  award_date DATE,
  expected_duration_months INT,
  status VARCHAR(20)
);

IF OBJECT_ID('dbo.suppliers', 'U') IS NOT NULL
  DROP TABLE dbo.suppliers;

CREATE TABLE dbo.suppliers
(
  supplier_id VARCHAR(20) PRIMARY KEY,
  supplier_name VARCHAR(100),
  past_contracts INT,
  average_delay_days INT,
  compliance_issues INT
);

IF OBJECT_ID('dbo.delays', 'U') IS NOT NULL
  DROP TABLE dbo.delays;

CREATE TABLE dbo.delays
(
  contract_id VARCHAR(20),
  supplier_id VARCHAR(20),
  contract_value_million FLOAT,
  contract_type VARCHAR(50),
  award_date DATE,
  expected_duration_months INT,
  status VARCHAR(20),
  delay_days INT,
  FOREIGN KEY (contract_id) REFERENCES contracts(contract_id)
);