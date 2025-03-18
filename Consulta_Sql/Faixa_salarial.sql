CREATE TABLE FAIXA_SALARIAL AS
SELECT
    DB.ANO,
    DB.MES,
    CASE 
        WHEN DB.c01011 = '00' THEN '0 - 100'
        WHEN DB.c01011 = '01' THEN '101 - 300'
        WHEN DB.c01011 = '02' THEN '301 - 600'
        WHEN DB.c01011 = '03' THEN '601 - 800'
        WHEN DB.c01011 = '04' THEN '801 - 1.600'
        WHEN DB.c01011 = '05' THEN '1.601 - 3.000'
        WHEN DB.c01011 = '06' THEN '3.001 - 10.000'
        WHEN DB.c01011 = '07' THEN '10.001 - 50.000'
        WHEN DB.c01011 = '08' THEN '50.001 - 100.000'
        WHEN DB.c01011 = '09' THEN 'Mais de 100.000'
        ELSE 'Não responderam'  -- Certifique-se de que o ELSE é o mesmo no GROUP BY
    END AS faixa_de_valores,
    COUNT(*) AS total_registros
FROM pna_convi19_tratado DB
WHERE DB.MES <> 'V1013'  -- Verifique se MES é uma string ou número
GROUP BY
    DB.ANO,
    DB.MES,
    CASE 
        WHEN DB.c01011 = '00' THEN '0 - 100'
        WHEN DB.c01011 = '01' THEN '101 - 300'
        WHEN DB.c01011 = '02' THEN '301 - 600'
        WHEN DB.c01011 = '03' THEN '601 - 800'
        WHEN DB.c01011 = '04' THEN '801 - 1.600'
        WHEN DB.c01011 = '05' THEN '1.601 - 3.000'
        WHEN DB.c01011 = '06' THEN '3.001 - 10.000'
        WHEN DB.c01011 = '07' THEN '10.001 - 50.000'
        WHEN DB.c01011 = '08' THEN '50.001 - 100.000'
        WHEN DB.c01011 = '09' THEN 'Mais de 100.000'
        ELSE 'Não responderam'  -- Certifique-se de que o ELSE é o mesmo no SELECT
    END;