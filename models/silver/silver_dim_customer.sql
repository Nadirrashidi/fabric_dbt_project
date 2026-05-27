{{
    config(
        materialized='table',
        schema='silver'
    )
}}

with bronze_dim_customer as (
    select * from {{ ref('bronze_dim_customer') }}
)

select 
  cast(customer_sk as int) as customer_sk,
  upper(first_name) as first_name,
  upper(last_name) as last_name,
  coalesce(email, 'NOT AVAILABLE') as email,
   loyalty_tier,
   signup_date,
   year(signup_date) as signup_year,
   month(signup_date) as signup_month
from bronze_dim_customer
where customer_sk is not null