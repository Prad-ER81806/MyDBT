{{
    config(
        materialized='incremental',
        unique_key ='d_date_sk'
    )
}}

select * from raw.jaffle_shop.Incremental_table

{% if is_incremental() %}
where d_date > ( select max(d_date) from {{ this }} )
{% endif %}
