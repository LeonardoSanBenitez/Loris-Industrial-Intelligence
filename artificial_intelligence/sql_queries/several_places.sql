select uid, momento, p3, fi_3, (ta_real + tb_real + tc_real)/3 as voltage
from elo_dados

where 
momento<'2019-12-12 17:30' and
momento>'2019-12-12 13:30' and (
uid='000001' or 
uid='000002' or 
uid='000003' or 
uid='000004' or 
uid='000005' or 
uid='000007' or 
uid='000009' or 
uid='000010' or 
uid='000012' or 
uid='000013'
)

order by momento DESC
