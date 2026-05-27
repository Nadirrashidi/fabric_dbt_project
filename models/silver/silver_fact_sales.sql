{{
    config(materialized='table', schema='silver')
}}

with bronze_fact_sales as (
    select * from {{ ref('bronze_fact_sales') }}
)

select * from bronze_fact_sales