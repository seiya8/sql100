select
customer_id,
sum(amount) as sum_amount,
ln(sum(amount)) as ln_sum_amount
from receipts
group by customer_id
limit 10;
