-- export as ElectricData5min2018.csv
-- Runtime: 23min
SELECT momento as timestamp, (ta_real + tb_real + tc_real)/3 as voltage, p3, p3/s3 as cosPhi
FROM averagesFromElo(5, '2018-01-01 00:00:00', '2018-12-31 23:59:59', '000001')
