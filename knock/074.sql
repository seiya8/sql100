select distinct
sales_ymd,
subdate(sales_ymd, weekday(sales_ymd)) as monday,
weekday(sales_ymd) as weekday
from receipts
limit 10;
