{{ config(materialized='table', schema='bronze') }}

with raw_returns as (
    
    select * from {{ source('Source', 'fact_returns') }}
)

select
    *
from raw_returns