CREATE TABLE Providencia AS
SELECT 
    DB.ANO,
    DB.B0031,
    DB.MES,
    'Providência tomada para recuperar dos sintomas foi ficar em casa' AS Providencia,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0031 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0031 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0031 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0031 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0031,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0032,
    DB.MES,
    'Providência tomada para recuperar dos sintomas foi ligar para algum profissional de saúde' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0032 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0032 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0032 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0032 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0032,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0033,
    DB.MES,
    'Providência tomada  para recuperar dos sintomas foi comprar e/ou tomar  remédio por conta própria' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0033 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0033 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0033 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0033 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0033,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0034,
    DB.MES,
    'Providência tomada para recuperar dos sintomas foi comprar e/ou tomar remédio por orientação médica' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0034 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0034 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0034 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0034 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0034,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0035,
    DB.MES,
    'Providência tomada para recuperar dos sintomas foi receber visita de algum profissional de saúde do SUS (equipe de saúde da família, agente comunitário, etc.)' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0035 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0035 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0035 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0035 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0035,
    DB.MES
UNION all

SELECT 
    DB.ANO,
    DB.B0036,
    DB.MES,
    'Providência tomada para recuperar dos sintomas foi receber visita de profissional de saúde particular ' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0036 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0036 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0036 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0036 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0036,
    DB.MES;