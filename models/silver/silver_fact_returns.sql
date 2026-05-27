{{
    config(materialized='table', schema='silver')
}}

with bronze_fact_returns as (
    select * from {{ ref('bronze_fact_returns') }}
)

select * from bronze_fact_returns