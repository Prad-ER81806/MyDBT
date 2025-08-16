select * from {{ ref('employees_DBT') }}

select * from {{ ref('stg_payment') }}
