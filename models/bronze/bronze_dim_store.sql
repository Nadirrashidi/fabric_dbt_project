{{ config(materialized='table', schema='bronze') }}

with raw_store as (
    
    select * from {{ source('Source', 'dim_store') }}
)

select
    *
from raw_store