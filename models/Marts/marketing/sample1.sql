{{
    config(
        materialized='table',
        alias = 'myaliastable',
        schema = 'public'
    )
}}
with temp_table as(select 1 as id
union
select null as id)
select * from temp_table