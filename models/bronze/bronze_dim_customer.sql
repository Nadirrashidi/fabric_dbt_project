{{ config(materialized='table', schema='bronze') }}

with raw_customer as (
    
    select * from {{ source('Source', 'dim_customer') }}
)

select
    *
from raw_customer