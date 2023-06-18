with minmax as (
    select
    min(sum_amount) as min_amount,
    max(sum_amount) as max_amount
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
(sum(amount) - min_amount) / (max_amount - min_amount) as amount_minmax_score
from receipts
cross join minmax
group by customer_id
limit 10;
