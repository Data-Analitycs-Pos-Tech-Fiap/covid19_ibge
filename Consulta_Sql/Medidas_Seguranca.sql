CREATE TABLE Medida_Segurancas as
SELECT 
    DB.ANO,
    DB.MES,
    'Nao_fez_restricao' AS TIPO,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B011 AS INT) = 1 THEN 1
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B011 AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES

UNION ALL

SELECT  
    DB.ANO,
    DB.MES,
    'Reduziu_contato' AS TIPO,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B011 AS INT) = 2 THEN 1
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B011 AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES
    
UNION ALL

SELECT  
    DB.ANO,
    DB.MES,
    'Ficou_em_casa_necessidade' AS TIPO,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B011 AS INT) = 3 THEN 1
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B011 AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES
UNION ALL

SELECT  
    DB.ANO,
    DB.MES,
    'Ficou_rigorosamente_isolado' AS TIPO,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B011 AS INT) = 4 THEN 1
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B011 AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY ANO, MES;