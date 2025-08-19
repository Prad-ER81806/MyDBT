{{ config(materialized="table") }}

select c.c_custkey, c.c_name, c.c_nationkey, c.C_MKTSEGMENT,{{ case_by("c.C_MKTSEGMENT") }} comns_C_MKTSEGMENT
from {{ source("jaffle_123_shop", "CUSTOMER") }} c

