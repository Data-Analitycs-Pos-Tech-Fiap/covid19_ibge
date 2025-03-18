CREATE TABLE pna_convi19_tratado as
WITH V1 AS (SELECT 
Ano,
UF,
CAPITAL,
RM_RIDE,
V1008 AS DOMICILIO,
V1012,
V1013 AS MES,
V1016 AS NUMERO_ENTREVISTA,
Estrato,
UPA,
V1022,
V1023,
V1030,
V1031,
V1032,
posest,
A001,
A001A,
A001B1,
A001B2,
A001B3,
A002,
A003,
A004,
A005,
A006,
A007,
A008,
A009,
B0011,
B0012,
B0013,
B0014,
B0015,
B0016,
B0017,
B0018,
B0019,
B00110,
B00111,
B00112,
B00113,
B002,
B0031,
B0032,
B0033,
B0034,
B0035,
B0036,
B0037,
B0041,
B0042,
B0043,
B0044,
B0045,
B0046,
B005,
B006,
B007,
B008,
B009A,
B009B,
B009C,
B009D,
B009E,
B009F,
B0101,
B0102,
B0103,
B0104,
B0105,
B0106,
B011,
C001,
C002,
C003,
C004,
C005,
C0051,
C0052,
C0053,
C006,
C007,
C007A,
C007B,
C007C,
C007D,
C007E,
C007E1,
C007E2,
C007F,
C008,
C009,
C009A,
C010,
C0101,
C01011,
C01012,
C0102,
C01021,
C01022,
C0103,
C0104,
C011A,
C011A1,
C011A11,
C011A12,
C011A2,
C011A21,
C011A22,
C012,
C013,
C014,
C015,
C016,
C017A,
D0011,
D0013,
D0021,
D0023,
D0031,
D0033,
D0041,
D0043,
D0051,
D0053,
D0061,
D0063,
D0071,
D0073,
E001,
E0021,
E0022,
E0023,
E0024,
F001,
F0021,
F0022,
F002A1,
F002A2,
F002A3,
F002A4,
F002A5,
F0061,
F006
FROM pna_covid19),

V2 AS (SELECT 
Ano,
UF,
CAPITAL,
RM_RIDE,
V1008 AS DOMICILIO,
V1012,
V1013 AS MES,
V1016 AS NUMERO_ENTREVISTA,
Estrato,
UPA,
V1022,
V1023,
V1030,
V1031,
V1032,
posest,
A001,
A001A,
A001B1,
A001B2,
A001B3,
A002,
A003,
A004,
A005,
A006,
A007,
A008,
A009,
B0011,
B0012,
B0013,
B0014,
B0015,
B0016,
B0017,
B0018,
B0019,
B00110,
B00111,
B00112,
B00113,
B002,
B0031,
B0032,
B0033,
B0034,
B0035,
B0036,
B0037,
B0041,
B0042,
B0043,
B0044,
B0045,
B0046,
B005,
B006,
B007,
B008,
B009A,
B009B,
B009C,
B009D,
B009E,
B009F,
B0101,
B0102,
B0103,
B0104,
B0105,
B0106,
B011,
C001,
C002,
C003,
C004,
C005,
C0051,
C0052,
C0053,
C006,
C007,
C007A,
C007B,
C007C,
C007D,
C007E,
C007E1,
C007E2,
C007F,
C008,
C009,
C009A,
C010,
C0101,
C01011,
C01012,
C0102,
C01021,
C01022,
C0103,
C0104,
C011A,
C011A1,
C011A11,
C011A12,
C011A2,
C011A21,
C011A22,
C012,
C013,
C014,
C015,
C016,
C017A,
D0011,
D0013,
D0021,
D0023,
D0031,
D0033,
D0041,
D0043,
D0051,
D0053,
D0061,
D0063,
D0071,
D0073,
E001,
E0021,
E0022,
E0023,
E0024,
F001,
F0021,
F0022,
F002A1,
F002A2,
F002A3,
F002A4,
F002A5,
F0061,
F006
FROM pna_covid19_11),

Tratado as (
SELECT * FROM V1
UNION all
SELECT * FROM V2)

SELECT * FROM Tratado;