select * 
from "LN_31_60_Carta_Analytics"
Where send_start >= {{ dateRange2.value.start }} AND send_start < {{ dateRange2.value.end }}
