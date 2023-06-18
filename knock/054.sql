select
customer_id,
address,
case
    when left(address, 2) = '埼玉' then 11
    when left(address, 2) = '千葉' then 12
    when left(address, 2) = '東京' then 13
    when left(address, 2) = '神奈' then 14
    end as prefecture_cd
from customers
limit 10;