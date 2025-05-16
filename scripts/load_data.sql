USE Datawarehouse;
GO

-- Insert data into the contracts table
BULK INSERT dbo.contracts
FROM '/var/opt/mssql/data/datasets/defense_risk_prediction/contracts.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
SELECT * FROM dbo.contracts;

-- Insert data into the suppliers table
-- Store entire file as a JSON string
DECLARE @json NVARCHAR(MAX);

-- Load file from disk into @json
SELECT @json = BulkColumn
FROM OPENROWSET(
    BULK '/var/opt/mssql/data/datasets/defense_risk_prediction/suppliers.json',
    SINGLE_CLOB
) AS raw_json;

-- Parse JSON array and insert values
INSERT INTO suppliers
    (supplier_id, supplier_name, past_contracts, average_delay_days, compliance_issues)
SELECT
    JSON_VALUE(value, '$.supplier_id'),
    JSON_VALUE(value, '$.supplier_name'),
    JSON_VALUE(value, '$.past_contracts'),
    JSON_VALUE(value, '$.average_delay_days'),
    JSON_VALUE(value, '$.compliance_issues')
FROM OPENJSON(@json);

SELECT * FROM dbo.suppliers;

-- Insert data into the delays table
BULK INSERT dbo.delays
FROM '/var/opt/mssql/data/datasets/defense_risk_prediction/delays.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

SELECT *
FROM dbo.delays;