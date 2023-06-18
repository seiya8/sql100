with avgstd as (
    select
    avg(sum_amount) as avg_amount,
    stddev(sum_amount) as std_amount
    from (
        select
        sum(amount) as sum_amount
        from receipts
        where customer_id not like 'Z%'
        group by customer_id
    ) tmp
)
select
customer_id,
sum(amount) as sum_amount,
(sum(amount) - avg_amount) / std_amount as amount_z_score
from receipts
cross join avgstd
group by customer_id
limit 10;
