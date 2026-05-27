{{ config(
    materialized='table',
    schema='gold'
) }}

with fact_sales as (
    select * from {{ ref('silver_fact_sales') }}
),

dim_customer as (
    select * from {{ ref('silver_dim_customer') }}
),

dim_product as (
    select * from {{ ref('silver_dim_product') }}
),

dim_date as (
    select * from {{ ref('silver_dim_date') }}
)

select
    -- 1. Sales Fact Data (Measures & IDs)
    f.sales_id,
    f.quantity,
    f.unit_price,
    f.gross_amount,
    f.discount_amount,
    f.net_amount,
    f.payment_method,

    -- 2. Centralized Customer Information
    c.customer_sk,
    concat(c.first_name, ' ', c.last_name) as customer_full_name,
    c.email as customer_email,
    c.loyalty_tier,

    -- 3. Centralized Product Information
    p.product_sk,
    p.product_code,
    p.product_name,
    p.department as product_department,
    p.category as product_category,
    p.list_price as product_list_price,

    -- 4. Centralized Time/Date Information
    d.date_sk,
    d.date as sales_date,
    d.year as sales_year,
    d.month_name as sales_month,
    d.day_of_week as sales_day_name

from fact_sales f
left join dim_customer c on f.customer_sk = c.customer_sk
left join dim_product p on f.product_sk = p.product_sk
left join dim_date d on f.date_sk = d.date_sk