select
c.customer_id,
coalesce(agg.sum_amount, 0)
from customers c
left join (
    select
    customer_id,
    sum(amount) as sum_amount
    from receipts
    where customer_id not like 'Z%'
    group by customer_id
) agg
on c.customer_id = agg.customer_id
limit 10;