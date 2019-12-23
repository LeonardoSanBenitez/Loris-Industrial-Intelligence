-- export as brasilia_case_electric.csv
-- Runtime: 52min
SELECT 
    momento as timestamp, 
    p3,
    s3,
    p3/s3 as cosPhi,
    (ta_real + tb_real + tc_real)/3 as voltage,
    extract(month from averagesFromElo.momento) as month,
    extract(hour from averagesFromElo.momento) as hour,
    extract(dow from averagesFromElo.momento) as dayOfWeek
FROM averagesFromElo(1, '2018-02-01 00:00:00', '2019-12-18 23:59:59', '000005')
ORDER BY momento ASC

-- export as brasilia_case_climatic.csv
-- Runtime: 1.4s
SELECT 
momento as timestamp, 
temp_celsius, 
pressao as pression, 
precipitacao as precipitation, 
windspeed_mps
FROM clima
WHERE	local = 'brasilia' and
	momento >= '2018-02-01 00:00:00' and
	momento <= '2019-12-18 23:59:59'
ORDER BY momento ASC


-- Esplanada Bloco C: de 01 de fevereiro de 2018 -->> 24 de outubro de 2019



