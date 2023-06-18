select
customer_id,
case when sum(amount) > 2000 then 1 else 0 end as amount_over_2000
from receipts
where customer_id not like 'Z%'
group by customer_id
limit 10;