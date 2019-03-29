-- UID 2 - Ferro de Solda Preto 70W
SELECT
    1 as class,
    linevoltagea as voltage,
	linecurrenta as current,
	activepowera as activePower,
	reactivepowera as reactivePower,
	powerfactora as powerFactor,
	fundamentalpowera as fundamentalPower,
	harmonicpowera as hamonicPower,
    received_time as time
FROM raw_data
WHERE
		received_time>='2019-03-20 05:08:43' AND
		received_time<='2019-03-20 05:36:30'

UNION ALL

--UID 3 - Ferro de Solda Amarelo 50W na Toyo TS-900 Max
SELECT
    1 as class,
    linevoltagea as voltage,
	linecurrenta as current,
	activepowera as activePower,
	reactivepowera as reactivePower,
	powerfactora as powerFactor,
	fundamentalpowera as fundamentalPower,
	harmonicpowera as hamonicPower,
    received_time as time
FROM raw_data
WHERE
		received_time>='2019-03-20 05:39:12' AND
		received_time<='2019-03-20 05:54:15'

UNION ALL

--UID 4 - Pistola de Cola Quente Azul Hikari 100W(25W)
SELECT
    1 as class,
    linevoltagea as voltage,
	linecurrenta as current,
	activepowera as activePower,
	reactivepowera as reactivePower,
	powerfactora as powerFactor,
	fundamentalpowera as fundamentalPower,
	harmonicpowera as hamonicPower,
    received_time as time
FROM raw_data
WHERE
		received_time>='2019-03-20 05:56:33' AND
		received_time<='2019-03-20 06:12:36'

UNION ALL

--UID 5 - Osciloscopio TDS 2014B 100MHz 1GS/s Tektronix
SELECT
    2 as class,
	linevoltagea as voltage,
	linecurrenta as current,
	activepowera as activePower,
	reactivepowera as reactivePower,
	powerfactora as powerFactor,
	fundamentalpowera as fundamentalPower,
	harmonicpowera as hamonicPower,
    received_time as time
FROM raw_data
WHERE
		received_time>='2019-03-20 06:22:05' AND
		received_time<='2019-03-20 06:30:00'

UNION ALL

--UID 5 - Osciloscopio TDS 2014B 100MHz 1GS/s Tektronix ALTERADO
SELECT
    2 as class,
    linevoltagea as voltage,
	linecurrenta*1.5 as current,
	activepowera*1.5 as activePower,
	reactivepowera*1.6 as reactivePower,
	powerfactora*0.95 as powerFactor,
	fundamentalpowera as fundamentalPower,
	harmonicpowera*1.1 as hamonicPower,
    received_time as time
FROM raw_data
WHERE
		received_time>='2019-03-20 06:30:00' AND
		received_time<='2019-03-20 06:41:10'
