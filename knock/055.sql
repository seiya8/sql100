with pct as (
    select distinct
    percentile_cont(0.25) within group(order by sum_amount) over (partition by -1) as amount25,
    percentile_cont(0.5) within group(order by sum_amount) over (partition by -1) as amount50,
    percentile_cont(0.75) within group(order by sum_amount) over (partition by -1) as amount75,
    percentile_cont(1) within group(order by sum_amount) over (partition by -1) as amount100
    from (select
        sum(amount) as sum_amount
        from receipts
        group by customer_id
    ) agg
)
select
customer_id,
case
    when sum(amount) < amount25 then 1
    when sum(amount) < amount50 then 2
    when sum(amount) < amount75 then 3
    else 4
    end as amount_quartile
from receipts
cross join pct
group by customer_id
limit 10;
