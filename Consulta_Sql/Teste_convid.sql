SELECT 
    DB.ANO,
    DB.MES,
    'Testes_Positivos' AS Tipos_Teste,
    SUM(CASE 
            WHEN TRY_CAST(DB.B009B AS INT) = 1 OR TRY_CAST(DB.B009D AS INT) = 1 OR TRY_CAST(DB.B009F AS INT) = 1 THEN 1
            ELSE 0 
        END) AS Qtd
FROM 
    pna_convi19_tratado DB 
WHERE   
    TRY_CAST(DB.B009B AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009D AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009F AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES

UNION ALL

SELECT 
    DB.ANO,
    DB.MES,
    'Testes_Negativos' AS Tipos_Teste,
    SUM(CASE 
            WHEN TRY_CAST(DB.B009B AS INT) = 2 OR TRY_CAST(DB.B009D AS INT) = 2 OR TRY_CAST(DB.B009F AS INT) = 2 THEN 1
            ELSE 0 
        END) AS Qtd
FROM 
    pna_convi19_tratado DB 
WHERE   
    TRY_CAST(DB.B009B AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009D AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009F AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES

UNION ALL

SELECT 
    DB.ANO,
    DB.MES,
    'Testes_Inconclusivo' AS Tipos_Teste,
    SUM(CASE 
            WHEN TRY_CAST(DB.B009B AS INT) = 3 OR TRY_CAST(DB.B009D AS INT) = 3 OR TRY_CAST(DB.B009F AS INT) = 3 THEN 1
            ELSE 0 
        END) AS Qtd
FROM 
    pna_convi19_tratado DB  
WHERE   
    TRY_CAST(DB.B009B AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009D AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009F AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES

UNION ALL

SELECT 
    DB.ANO,
    DB.MES,
    'Testes_nao_recebeu_ainda' AS Tipos_Teste,
    SUM(CASE 
            WHEN TRY_CAST(DB.B009B AS INT) = 4 OR TRY_CAST(DB.B009D AS INT) = 4 OR TRY_CAST(DB.B009F AS INT) = 4 THEN 1
            ELSE 0 
        END) AS Qtd
FROM 
    pna_convi19_tratado DB  
WHERE   
    TRY_CAST(DB.B009B AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009D AS INT) IN (1, 2, 3, 4) AND
    TRY_CAST(DB.B009F AS INT) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES

ORDER BY 
    ANO,
    MES,
    Tipos_Teste;