select distinct
percentile_cont(0.25) within group(order by amount) over (partition by -1) as amount25,
percentile_cont(0.5) within group(order by amount) over (partition by -1) as amount50,
percentile_cont(0.75) within group(order by amount) over (partition by -1) as amount75,
percentile_cont(1) within group(order by amount) over (partition by -1) as amount100
from receipts;
