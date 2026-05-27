{{ config(materialized='table', schema='bronze') }}

with raw_fact_sales as (
    select * from {{ source('Source', 'fact_sales') }}
)

select
    *
from raw_fact_sales