with agg as (
    select
    c.customer_id,
    p.category_major_cd,
    sum(r.amount) as sum_amount
    from customers c
    join receipts r
    on c.customer_id = r.customer_id
    join products p
    on r.product_cd = p.product_cd
    group by c.customer_id, p.category_major_cd
)
select
customer_id,
sum(sum_amount) as sum_amount,
sum(case when category_major_cd = '07' then sum_amount else 0 end) as sum_amount_07,
sum(case when category_major_cd = '07' then sum_amount else 0 end) / sum(sum_amount) as ratio
from agg
group by customer_id
having sum_amount_07 > 0
limit 10;