{{
    config(materialized='table', schema='silver')
}}

with bronze_dim_date as (
    select * from {{ ref('bronze_dim_date') }}
)

select * from bronze_dim_date