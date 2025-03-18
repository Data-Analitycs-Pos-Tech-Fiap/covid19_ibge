CREATE TABLE pna_convid19_cargos as
SELECT
    ano,
    mes,
    CASE 
        WHEN DB.C007c = '1' THEN 'Empregado doméstico, diarista, cozinheiro'
        WHEN DB.C007c = '2' THEN 'Faxineiro, auxiliar de limpeza etc.'
        WHEN DB.C007c = '3' THEN 'Auxiliar de escritório, escriturário'
        WHEN DB.C007c = '4' THEN 'Secretária, recepcionista'
        WHEN DB.C007c = '5' THEN 'Operador de Telemarketing'
        WHEN DB.C007c = '6' THEN 'Comerciante'
        WHEN DB.C007c = '7' THEN 'Balconista, vendedor de loja'
        WHEN DB.C007c = '8' THEN 'Vendedor a domicílio, representante de vendas, vendedor de catálogo'
        WHEN DB.C007c = '9' THEN 'Vendedor ambulante'
        WHEN DB.C007c = '10' THEN 'Cozinheiro e garçon'
        WHEN DB.C007c = '11' THEN 'Padeiro, açougueiro e doceiro'
        WHEN DB.C007c = '12' THEN 'Agricultor, criador de animais, pescador, silvicultor e jardineiro'
        WHEN DB.C007c = '13' THEN 'Auxiliar da agropecuária'
        WHEN DB.C007c = '14' THEN 'Motorista'
        WHEN DB.C007c = '15' THEN 'Motorista de caminhão'
        WHEN DB.C007c = '16' THEN 'Motoboy'
        WHEN DB.C007c = '17' THEN 'Entregador de mercadorias'
        WHEN DB.C007c = '18' THEN 'Pedreiro, servente de pedreiro, pintor, eletricista, marceneiro'
        WHEN DB.C007c = '19' THEN 'Mecânico de veículos, máquinas industriais etc.'
        WHEN DB.C007c = '20' THEN 'Artesão, costureiro e sapateiro'
        WHEN DB.C007c = '21' THEN 'Cabeleireiro, manicure e afins'
        WHEN DB.C007c = '22' THEN 'Operador de máquinas, montador na indústria'
        WHEN DB.C007c = '23' THEN 'Auxiliar de produção, de carga e descarga'
        WHEN DB.C007c = '24' THEN 'Professor da educação infantil, de ensino fundamental, médio ou superior'
        WHEN DB.C007c = '25' THEN 'Pedagogo, professor de idiomas, música, arte e reforço escolar'
        WHEN DB.C007c = '26' THEN 'Médico, enfermeiro, profissionais de saúde de nível superior'
        WHEN DB.C007c = '27' THEN 'Técnico, profissional da saúde de nível médio'
        WHEN DB.C007c = '28' THEN 'Cuidador de crianças, doentes ou idosos'
        WHEN DB.C007c = '29' THEN 'Segurança, vigilante, outro trabalhador dos serviços de proteção'
        WHEN DB.C007c = '30' THEN 'Policial civil'
        WHEN DB.C007c = '31' THEN 'Porteiro, zelador'
        WHEN DB.C007c = '32' THEN 'Artista, religioso'
        WHEN DB.C007c = '33' THEN 'Diretor, gerente, cargo político ou comissionado'
        WHEN DB.C007c = '34' THEN 'Outra profissão de nível superior'
        WHEN DB.C007c = '35' THEN 'Outro técnico ou profissional de nível médio'
        ELSE 'Outro'
    END AS cargo,
    COUNT(*) AS qtd_populacao_entrevistada
FROM 
    pna_convi19_tratado DB
WHERE
    DB.C007c BETWEEN '1' AND '35'
GROUP BY
    ano,
    mes,
    DB.C007c
ORDER BY
    CASE 
        WHEN DB.C007c = '1' THEN 1
        WHEN DB.C007c = '2' THEN 2
        WHEN DB.C007c = '3' THEN 3
        WHEN DB.C007c = '4' THEN 4
        WHEN DB.C007c = '5' THEN 5
        WHEN DB.C007c = '6' THEN 6
        WHEN DB.C007c = '7' THEN 7
        WHEN DB.C007c = '8' THEN 8
        WHEN DB.C007c = '9' THEN 9
        WHEN DB.C007c = '10' THEN 10
        WHEN DB.C007c = '11' THEN 11
        WHEN DB.C007c = '12' THEN 12
        WHEN DB.C007c = '13' THEN 13
        WHEN DB.C007c = '14' THEN 14
        WHEN DB.C007c = '15' THEN 15
        WHEN DB.C007c = '16' THEN 16
        WHEN DB.C007c = '17' THEN 17
        WHEN DB.C007c = '18' THEN 18
        WHEN DB.C007c = '19' THEN 19
        WHEN DB.C007c = '20' THEN 20
        WHEN DB.C007c = '21' THEN 21
        WHEN DB.C007c = '22' THEN 22
        WHEN DB.C007c = '23' THEN 23
        WHEN DB.C007c = '24' THEN 24
        WHEN DB.C007c = '25' THEN 25
        WHEN DB.C007c = '26' THEN 26
        WHEN DB.C007c = '27' THEN 27
        WHEN DB.C007c = '28' THEN 28
        WHEN DB.C007c = '29' THEN 29
        WHEN DB.C007c = '30' THEN 30
        WHEN DB.C007c = '31' THEN 31
        WHEN DB.C007c = '32' THEN 32
        WHEN DB.C007c = '33' THEN 33
        WHEN DB.C007c = '34' THEN 34
        WHEN DB.C007c = '35' THEN 35
        ELSE 36
    END;