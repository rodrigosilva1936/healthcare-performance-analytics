

SELECT COUNT(*) AS total_records
FROM dbo.[healthcare-cleaned]

SELECT TOP 10 * 
FROM dbo.[healthcare-cleaned]

-- Date Range
SELECT MIN(periodo) as first_record, MAX(periodo) as last_record
FROM dbo.[healthcare-cleaned]

-- Records per Region
SELECT  ars AS regioes, COUNT(*) AS total_records
FROM dbo.[healthcare-cleaned]
GROUP BY ars
ORDER BY total_records DESC
--ARS e Portugal Continental = 14368, ARS Algarve = 12837

-- Records per Indicator
SELECT indicador, COUNT(*) AS total_records
FROM dbo.[healthcare-cleaned]
GROUP BY indicador
ORDER BY total_records DESC


