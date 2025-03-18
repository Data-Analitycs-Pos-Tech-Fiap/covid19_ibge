CREATE TABLE internado_entubados as 
SELECT 
    DB.ANO AS Ano,
    DB.mes AS Mes,
    'Atendido' AS Atendido,
    COUNT(CASE WHEN TRY_CAST(COALESCE(NULLIF(DB.B005, ''), '0') AS INT) = 1 THEN 1 END) AS Qtd_Populacao
FROM 
    techchalenge01.pna_convi19_tratado DB
    where mes <> 'V1013'
GROUP BY 
    DB.ANO,
    DB.mes

UNION ALL

SELECT 
    DB.ANO AS Ano,
    DB.mes AS Mes,
    'Não Atendido' AS Atendido,
    COUNT(CASE WHEN TRY_CAST(COALESCE(NULLIF(DB.B005, ''), '0') AS INT) = 3 THEN 1 END) AS Qtd_Populacao
FROM 
    techchalenge01.pna_convi19_tratado DB
    where mes <> 'V1013'
GROUP BY 
    DB.ANO,
    DB.mes

UNION ALL

SELECT 
    DB.ANO AS Ano,
    DB.mes AS Mes,
    'Sem Necessidade de Atendimento' AS Atendido,
    COUNT(CASE WHEN TRY_CAST(COALESCE(NULLIF(DB.B005, ''), '0') AS INT) = 2 THEN 1 END) AS Qtd_Populacao
FROM 
    techchalenge01.pna_convi19_tratado DB
    where mes <> 'V1013'
GROUP BY 
    DB.ANO,
    DB.mes

UNION ALL

SELECT 
    DB.ANO AS Ano,
    DB.mes AS Mes,
    'Precisaram_respiracao_artificial' AS Atendido,
    COUNT(CASE WHEN TRY_CAST(COALESCE(NULLIF(DB.B006, ''), '0') AS INT) = 1 THEN 1 END) AS Qtd_Populacao
FROM 
    techchalenge01.pna_convi19_tratado DB
    where mes <> 'V1013'
GROUP BY 
    DB.ANO,
    DB.mes

ORDER BY 
    Ano,
    Mes,
    Atendido;