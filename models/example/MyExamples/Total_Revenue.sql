{{
    config(
        materialized='view'
    )
}}

select sum(amount)+1 as total_sum, orderid
from raw.stripe.payment
group by orderid
order by total_sum desc
