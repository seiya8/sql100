select
avg((unit_price - unit_cost) / unit_price) as avg_profit_rate
from products
where unit_price is not null
and unit_cost is not null;