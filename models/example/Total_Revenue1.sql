{{
    config(
        materialized='table'
    )
}}

select sum(amount)+10 as total_sum, orderid
from raw.stripe.payment
group by orderid
order by total_sum desc
