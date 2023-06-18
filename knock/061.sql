select
customer_id,
sum(amount) as sum_amount,
log(10, sum(amount)) as log10_sum_amount
from receipts
group by customer_id
limit 10;
