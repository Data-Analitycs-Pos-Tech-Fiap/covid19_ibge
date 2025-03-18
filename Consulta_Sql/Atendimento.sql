CREATE TABLE Atendimento AS
SELECT 
    DB.ANO,
    DB.B0041,
    DB.MES,
    'Local que buscou atendimento foi posto de saúde/Unidade básica de saúde /Equipe de Saúde da Família (médico, enfermeiro, técnico de enfermagem ou agente comunitário de saúde)' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0041 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0041 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0041 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0041 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0041,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0042,
    DB.MES,
    'Local que buscou atendimento foi pronto socorro do SUS/UPA' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0042 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0042 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0042 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0042 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0042,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0043,
    DB.MES,
    'Local que buscou atendimento foi hospital do SUS' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0043 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0043 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0043 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0043 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0043,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0044,
    DB.MES,
    'Local que buscou atendimento foi ambulatório ou consultório privado ou ligado às forças armadas' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0044 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0044 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0044 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0044 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0044,
    DB.MES
    
UNION all

SELECT 
    DB.ANO,
    DB.B0045,
    DB.MES,
    'Local que buscou atendimento foi pronto socorro privado ou ligado às forças armadas' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0045 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0045 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0045 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0045 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0045,
    DB.MES
UNION all

SELECT 
    DB.ANO,
    DB.B0046,
    DB.MES,
    'Local que buscou atendimento foi hospital privado ou ligado às forças armadas' AS Tipo_Atendimento,
    SUM(
        CASE
            WHEN TRY_CAST(DB.B0046 AS INT) = 1 THEN 1  -- Condição para valor 1
            WHEN TRY_CAST(DB.B0046 AS INT) = 2 THEN 1  -- Condição para valor 2
            WHEN TRY_CAST(DB.B0046 AS INT) = 9 THEN 1  -- Condição para valor 9
            ELSE 0  -- Ignora outros valores
        END
    ) AS Qtd
FROM pna_convi19_tratado DB
WHERE TRY_CAST(DB.B0046 AS INT) IN (1, 2, 9)  -- Filtra apenas os valores 1, 2 e 9
GROUP BY 
    DB.ANO,
    DB.B0046,
    DB.MES;