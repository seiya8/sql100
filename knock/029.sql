select
    r2.store_cd,
    (select product_cd
    from receipts r1
    where r1.store_cd = r2.store_cd
    group by product_cd
    order by count(product_cd) desc
    limit 1) as mode_product_cd
from receipts r2
group by r2.store_cd
limit 10
;