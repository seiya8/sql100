with agg as (
    select
    customer_id,
    sum(amount) as sum_amount
    from receipts
    where customer_id not like 'Z%'
    group by customer_id
)
select
customer_id,
sum_amount
from agg
where sum_amount >= (
    select
    avg(sum_amount)
    from agg
)
limit 10;