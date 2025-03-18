CREATE TABLE AuxilioEmergencial AS
SELECT 
    DB.ANO,
    DB.MES,
    DB.D0051 AS AuxilioEmergencial,
    COUNT(*) as Qtd
    FROM pna_convi19_tratado DB
    WHERE DB.MES <> 'V1013' 
    GROUP BY 
    DB.ANO,
    DB.MES,
    DB.D0051;