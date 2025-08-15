select order_id,sum(amount) sum_amt
from {{ ref('stg_Payments') }}
group by order_id having sum_amt<0