select
c.customer_id,
cast(r.sales_ymd as date) as sales_ymd,
cast(c.application_date as date) as application_date,
period_diff(date_format(r.sales_ymd, '%Y%m'), date_format(c.application_date, '%Y%m')) as elapsed_months
from receipts r
join customers c
on r.customer_id = c.customer_id
limit 10;
