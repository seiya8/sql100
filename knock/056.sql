select
customer_id,
birth_day,
case
    when (age div 10) * 10 < 60 then (age div 10) * 10
    else 60
    end as age_group
from customers
limit 10;
