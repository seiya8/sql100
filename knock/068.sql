select
product_cd,
unit_price,
truncate(unit_price * 1.1, 0) as price_with_tax
from products
where unit_price is not null
limit 10;
