{{ 
    config(
        materialized='incremental',
        schema='bronze',
        unique_key='sales_id'
    ) 
}}

with raw_fact_sales as (
    select * from {{ source('Source', 'fact_sales') }}
)

select
    sales_id,
    date_sk,
    store_sk,
    product_sk,
    customer_sk,
    promotion_sk,
    CAST(quantity AS INT) as quantity,
    CAST(unit_price AS DECIMAL(18,2)) as unit_price,
    CAST(gross_amount AS DECIMAL(18,2)) as gross_amount,
    CAST(discount_amount AS DECIMAL(18,2)) as discount_amount,
    CAST(net_amount AS DECIMAL(18,2)) as net_amount,
    payment_method
from raw_fact_sales

{% if is_incremental() %}
    
    where date_sk >= (select max(date_sk) from {{ this }})
{% endif %}