

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-04 13:30:00'
AND clima.momento<    '2018-09-04 17:30:00'
AND elo_dados.momento>'2018-09-04 13:30:00'
AND elo_dados.momento<'2018-09-04 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-06 13:30:00'
AND clima.momento<    '2018-09-06 17:30:00'
AND elo_dados.momento>'2018-09-06 13:30:00'
AND elo_dados.momento<'2018-09-06 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-11 13:30:00'
AND clima.momento<    '2018-09-11 17:30:00'
AND elo_dados.momento>'2018-09-11 13:30:00'
AND elo_dados.momento<'2018-09-11 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-13 13:30:00'
AND clima.momento<    '2018-09-13 17:30:00'
AND elo_dados.momento>'2018-09-13 13:30:00'
AND elo_dados.momento<'2018-09-13 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-18 13:30:00'
AND clima.momento<    '2018-09-18 17:30:00'
AND elo_dados.momento>'2018-09-18 13:30:00'
AND elo_dados.momento<'2018-09-18 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-20 13:30:00'
AND clima.momento<    '2018-09-20 17:30:00'
AND elo_dados.momento>'2018-09-20 13:30:00'
AND elo_dados.momento<'2018-09-20 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-25 13:30:00'
AND clima.momento<    '2018-09-25 17:30:00'
AND elo_dados.momento>'2018-09-25 13:30:00'
AND elo_dados.momento<'2018-09-25 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-09-27 13:30:00'
AND clima.momento<    '2018-09-27 17:30:00'
AND elo_dados.momento>'2018-09-27 13:30:00'
AND elo_dados.momento<'2018-09-27 17:30:00'


/****************************************************************/
UNION ALL


SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-01 13:30:00'
AND clima.momento<    '2018-10-01 17:30:00'
AND elo_dados.momento>'2018-10-01 13:30:00'
AND elo_dados.momento<'2018-10-01 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-04 13:30:00'
AND clima.momento<    '2018-10-04 17:30:00'
AND elo_dados.momento>'2018-10-04 13:30:00'
AND elo_dados.momento<'2018-10-04 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-09 13:30:00'
AND clima.momento<    '2018-10-09 17:30:00'
AND elo_dados.momento>'2018-10-09 13:30:00'
AND elo_dados.momento<'2018-10-09 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-11 13:30:00'
AND clima.momento<    '2018-10-11 17:30:00'
AND elo_dados.momento>'2018-10-11 13:30:00'
AND elo_dados.momento<'2018-10-11 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-16 13:30:00'
AND clima.momento<    '2018-10-16 17:30:00'
AND elo_dados.momento>'2018-10-16 13:30:00'
AND elo_dados.momento<'2018-10-16 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-18 13:30:00'
AND clima.momento<    '2018-10-18 17:30:00'
AND elo_dados.momento>'2018-10-18 13:30:00'
AND elo_dados.momento<'2018-10-18 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-23 13:30:00'
AND clima.momento<    '2018-10-23 17:30:00'
AND elo_dados.momento>'2018-10-23 13:30:00'
AND elo_dados.momento<'2018-10-23 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-25 13:30:00'
AND clima.momento<    '2018-10-25 17:30:00'
AND elo_dados.momento>'2018-10-25 13:30:00'
AND elo_dados.momento<'2018-10-25 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-10-30 13:30:00'
AND clima.momento<    '2018-10-30 17:30:00'
AND elo_dados.momento>'2018-10-30 13:30:00'
AND elo_dados.momento<'2018-10-30 17:30:00'

/****************************************************************/
UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-01 13:30:00'
AND clima.momento<    '2018-11-01 17:30:00'
AND elo_dados.momento>'2018-11-01 13:30:00'
AND elo_dados.momento<'2018-11-01 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-06 13:30:00'
AND clima.momento<    '2018-11-06 17:30:00'
AND elo_dados.momento>'2018-11-06 13:30:00'
AND elo_dados.momento<'2018-11-06 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-08 13:30:00'
AND clima.momento<    '2018-11-08 17:30:00'
AND elo_dados.momento>'2018-11-08 13:30:00'
AND elo_dados.momento<'2018-11-08 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-13 13:30:00'
AND clima.momento<    '2018-11-13 17:30:00'
AND elo_dados.momento>'2018-11-13 13:30:00'
AND elo_dados.momento<'2018-11-13 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-14 13:30:00'
AND clima.momento<    '2018-11-14 17:30:00'
AND elo_dados.momento>'2018-11-14 13:30:00'
AND elo_dados.momento<'2018-11-14 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-20 13:30:00'
AND clima.momento<    '2018-11-20 17:30:00'
AND elo_dados.momento>'2018-11-20 13:30:00'
AND elo_dados.momento<'2018-11-20 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-22 13:30:00'
AND clima.momento<    '2018-11-22 17:30:00'
AND elo_dados.momento>'2018-11-22 13:30:00'
AND elo_dados.momento<'2018-11-22 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-27 13:30:00'
AND clima.momento<    '2018-11-27 17:30:00'
AND elo_dados.momento>'2018-11-27 13:30:00'
AND elo_dados.momento<'2018-11-27 17:30:00'

UNION ALL

SELECT avg(clima.temp_celsius), avg(elo_dados.pa)
FROM clima, elo_dados
WHERE
clima.local='ifsc_fpolis'
AND elo_dados.uid = '000001'
AND clima.momento>    '2018-11-29 13:30:00'
AND clima.momento<    '2018-11-29 17:30:00'
AND elo_dados.momento>'2018-11-29 13:30:00'
AND elo_dados.momento<'2018-11-29 17:30:00'
