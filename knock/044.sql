select
age,
'00' as gender_cd,
male as amount
from sales_summary
union
select age,
'01' as gender_cd,
female as amount
from sales_summary
union
select age,
'99' as gender_cd,
unknown as amount
from sales_summary;