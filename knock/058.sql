select
case when gender_cd = 0 then 1 else 0 end as male,
case when gender_cd = 1 then 1 else 0 end as female,
case when gender_cd = 9 then 1 else 0 end as unknown
from customers
limit 10;
