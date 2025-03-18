CREATE TABLE plano_de_saude AS
SELECT 
    DB.ANO,
    DB.MES,
    'Sim' AS Plano_de_Saude,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B007 AS INT) = 1 THEN 1
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B007 AS INT) IN (1, 2)
GROUP BY 
    DB.ANO,
    DB.MES

UNION ALL

SELECT  
    DB.ANO,
    DB.MES,
    'Nao' AS Plano_de_Saude,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B007 AS INT) = 2 THEN 1
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B007 AS INT) IN (1, 2)
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY ANO, MES;