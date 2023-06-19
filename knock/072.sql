select
c.customer_id,
cast(r.sales_ymd as date) as sales_ymd,
cast(c.application_date as date) as application_date,
timestampdiff(year, cast(c.application_date as date), cast(r.sales_ymd as date)) as elapsed_years
from receipts r
join customers c
on r.customer_id = c.customer_id
limit 10;
