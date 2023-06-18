select
c.is_tokyo,
count(distinct c.customer_id) as customer_count
from receipts r
join
    (select
    customer_id,
    case
        when cast(left(postal_cd, 3) as decimal) between 100 and 209 then 1
        else 0
        end as is_tokyo
    from customers) as c
on r.customer_id = c.customer_id
group by c.is_tokyo;