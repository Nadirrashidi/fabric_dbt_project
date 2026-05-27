{{
    config(materialized='table', schema='silver')
}}

with bronze_dim_store as (
    select * from {{ ref('bronze_dim_store') }}
)

select * from bronze_dim_store