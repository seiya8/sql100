select
concat(gender, '_', cast(age_group as char), 's')
from (
    select
    case
        when gender_cd = 0 then 'male'
        when gender_cd = 1 then 'female'
        else 'unknown'
        end as gender,
    case
        when (age div 10) * 10 < 60 then (age div 10) * 10
        else 60
        end as age_group
    from customers
) tmp
limit 10;