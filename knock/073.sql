select
c.customer_id,
cast(r.sales_ymd as datetime) as sales_ymd,
cast(c.application_date as datetime) as application_date,
timestampdiff(second, cast(c.application_date as datetime), cast(r.sales_ymd as datetime)) as elapsed_seconds
from receipts r
join customers c
on r.customer_id = c.customer_id
limit 10;
