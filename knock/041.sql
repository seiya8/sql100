with day_amount as (
    select
    sales_ymd,
    sum(amount) as sum_amount
    from receipts
    group by sales_ymd
    order by sales_ymd
)
select
sales_ymd,
sum_amount - lag(sum_amount, 1) over (order by sales_ymd) as diff_amount
from day_amount
limit 10;