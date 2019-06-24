-- export as ClimateData1hr2018.csv
-- Runtime: 1s
SELECT momento as timestamp, temp_celsius, pressao as pression, precipitacao as precipitation, windspeed_mps
FROM clima
WHERE	local = 'ifsc_fpolis' and
	momento >= '2018-01-01 00:00:00' and
	momento <= '2018-12-31 23:59:59'
ORDER BY momento ASC
