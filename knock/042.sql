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
sum_amount,
lag(sum_amount, 1) over (order by sales_ymd) as lag_amount1,
lag(sum_amount, 2) over (order by sales_ymd) as lag_amount2,
lag(sum_amount, 3) over (order by sales_ymd) as lag_amount3
from day_amount
limit 10;