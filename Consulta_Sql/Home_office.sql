CREATE TABLE home_office as
SELECT
    DB.ANO,
    DB.MES,
    CASE
    WHEN DB.C013 = '1' THEN 'SIM'
    WHEN DB.C013 = '2' THEN 'NAO'
    ELSE 'Não respondeu' END Home_Office,
    COUNT(*) AS QTD
FROM pna_convi19_tratado DB
WHERE MES <> 'V1013'
GROUP BY 
    DB.ANO,
    DB.MES,
    CASE
    WHEN DB.C013 = '1' THEN 'SIM'
    WHEN DB.C013 = '2' THEN 'NAO'
    ELSE 'Não respondeu' END;
