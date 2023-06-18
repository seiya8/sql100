create table sales_summary as (
    with agg as (
        select
        CONCAT((c.age DIV 10)*10, "s") AS age,
        c.gender_cd, sum(r.amount) as sum_amount
        from receipts r
        join customers c
        on r.customer_id = c.customer_id
        group by
        c.age div 10,
        c.gender_cd
    )
    select
    age,
    sum(case when gender_cd = 0 then sum_amount else 0 end) as 'male',
    sum(case when gender_cd = 1 then sum_amount else 0 end) as 'female',
    sum(case when gender_cd = 9 then sum_amount else 0 end) as 'unknown'
    from agg
    group by age
);
select * from sales_summary;
