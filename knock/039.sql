with agg1 as (
    select
    customer_id,
    count(distinct sales_ymd) as day_count
    from receipts
    where customer_id not like 'Z%'
    group by customer_id
    order by day_count desc
    limit 20
),
agg2 as (
    select
    customer_id,
    sum(amount) as sum_amount
    from receipts
    where customer_id not like 'Z%'
    group by customer_id
    order by sum_amount desc
    limit 20
)
select
coalesce(agg1.customer_id, agg2.customer_id),
agg1.day_count,
agg2.sum_amount
from agg1
left outer join agg2
on agg1.customer_id = agg2.customer_id
union
select
coalesce(agg1.customer_id, agg2.customer_id),
agg1.day_count,
agg2.sum_amount
from agg1
right outer join agg2
on agg1.customer_id = agg2.customer_id;
