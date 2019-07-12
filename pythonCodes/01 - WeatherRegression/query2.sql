SELECT clima.momento, pa, temp_celsius, pressao
FROM averagesFromElo(60, '2019-02-18 00:00:00', '2019-06-28 23:59:59', '000001')
INNER JOIN clima ON clima.momento = averagesFromElo.momento
WHERE	clima.local='ifsc_fpolis'
