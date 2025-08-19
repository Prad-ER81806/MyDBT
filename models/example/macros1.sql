{{ config(materialized="table") }}

select c.c_custkey, c.c_name, c.c_nationkey, sum(o_totalprice) o_totalprice
from {{ source("jaffle_123_shop", "CUSTOMER") }} c
left join
    {{ source("jaffle_123_shop", "ORDERED") }} o on c.c_custkey = o.o_custkey
    {{ group_by(3) }}
