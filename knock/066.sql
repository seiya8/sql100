select
new_unit_price,
(new_unit_price - unit_cost) / new_unit_price as new_profit_rate
from (
    select
    product_cd,
    round(unit_cost / 0.7) as new_unit_price,
    unit_cost
    from products
    where unit_cost is not null
) tmp
limit 10;
