CREATE TABLE motivo_trabalho AS
SELECT
    DB.ANO,
    DB.MES, 
    CASE 
        WHEN DB.C016 = '01' THEN 'Devido à pandemia (isolamento, quarentena ou distanciamento social)'
        WHEN DB.C016 = '02' THEN 'Por problemas de saúde ou gravidez'
        WHEN DB.C016 = '03' THEN 'Estava estudando'
        WHEN DB.C016 = '04' THEN 'Não quer trabalhar ou é aposentado'
        WHEN DB.C016 = '05' THEN 'Não tinha experiência profissional ou qualificação'
        WHEN DB.C016 = '06' THEN 'Acha que não vai encontrar trabalho por ser muito jovem ou idoso'
        WHEN DB.C016 = '07' THEN 'Não havia trabalho na localidade'
        WHEN DB.C016 = '08' THEN 'Tinha que cuidar dos afazeres domésticos e ou de parentes'
        WHEN DB.C016 = '09' THEN 'Estava aguardando resposta de medida tomada para conseguir trabalho'
        WHEN DB.C016 = '10' THEN 'Outro motivo'
        ELSE 'Não responderam'
    END AS motivo,
    COUNT(*) AS total_registros
FROM pna_convi19_tratado DB
WHERE DB.MES <> 'V1013' 
GROUP BY
    DB.ANO,
    DB.MES,
    CASE 
        WHEN DB.C016 = '01' THEN 'Devido à pandemia (isolamento, quarentena ou distanciamento social)'
        WHEN DB.C016 = '02' THEN 'Por problemas de saúde ou gravidez'
        WHEN DB.C016 = '03' THEN 'Estava estudando'
        WHEN DB.C016 = '04' THEN 'Não quer trabalhar ou é aposentado'
        WHEN DB.C016 = '05' THEN 'Não tinha experiência profissional ou qualificação'
        WHEN DB.C016 = '06' THEN 'Acha que não vai encontrar trabalho por ser muito jovem ou idoso'
        WHEN DB.C016 = '07' THEN 'Não havia trabalho na localidade'
        WHEN DB.C016 = '08' THEN 'Tinha que cuidar dos afazeres domésticos e ou de parentes'
        WHEN DB.C016 = '09' THEN 'Estava aguardando resposta de medida tomada para conseguir trabalho'
        WHEN DB.C016 = '10' THEN 'Outro motivo'
        ELSE 'Não responderam'
    END;