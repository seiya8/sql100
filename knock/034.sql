select
avg(sum_amount)
from (
    select
    sum(amount) as sum_amount
    from receipts
    where customer_id not like 'Z%'
    group by customer_id
) tmp;
