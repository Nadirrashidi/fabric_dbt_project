{{ config(materialized='table', schema='bronze') }}

with raw_date as (
    
    select * from {{ source('Source', 'dim_date') }}
)

select
    *
from raw_date