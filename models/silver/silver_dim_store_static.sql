{{ config(
    materialized='table',
    schema='silver'
) }}

with raw_seed_store as (
    select * from {{ ref('dim_store') }}
)

select
    cast(store_sk as int) as store_sk,
    upper(store_name) as store_name, 
    city,
    region,
    country
from raw_seed_store