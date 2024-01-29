select * 
from "LN_31_60_Start_Audience"
where dt >= {{ dateRange1.value.start }} AND dt < {{ dateRange1.value.end }}