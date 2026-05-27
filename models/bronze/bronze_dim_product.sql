{{ config(materialized='table', schema='bronze') }}

with raw_product as (
    select * from {{ source('Source', 'dim_product') }}
)

select
    *
from raw_product