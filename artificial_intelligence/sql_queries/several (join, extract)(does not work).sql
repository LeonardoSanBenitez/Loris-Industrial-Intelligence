SELECT 
    averagesFromElo.momento as timestamp,
    temp_celsius,
    pressao as pression,
    precipitacao as precipitation,
    windspeed_mps,

    p3,
    s3,
    p3/s3 as cosphi,
    (ta_real + tb_real + tc_real)/3 as voltage_mean,
    extract(month from averagesFromElo.momento) as month,
    extract(hour from averagesFromElo.momento) as hour,
    extract(dow from averagesFromElo.momento) as dayOfWeek

FROM averagesFromElo(1, '2019-02-18 00:00:00', '2019-06-28 23:59:59', '000001')
FULL OUTER JOIN clima ON clima.momento = averagesFromElo.momento
WHERE	clima.local='ifsc_fpolis'

