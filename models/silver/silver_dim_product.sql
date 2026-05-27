{{ config(
    materialized='table',
    schema='silver'
) }}

with bronze_dim_product as (
    select * from {{ ref('bronze_dim_product') }}
),

cleaned_product as (
    select
        cast(product_sk as int) as product_sk,
        
        
        case 
            when product_code like 'PRD-%' then substring(product_code, 5, len(product_code))
            else product_code
        end as product_code,

        product_name,
        upper(department) as department,
        upper(category) as category,
        cast(supplier_sk as int) as supplier_sk,
        cast(list_price as decimal(18,2)) as list_price,
        uom as original_uom
    from bronze_dim_product
    where product_sk is not null
)

select
    product_sk,
    product_code,
    department,
    category,
    supplier_sk,
    list_price,

    -- 2. Product Name se quantity remove karna aur clean name banana
    case 
        when product_name like '% 1kg' then replace(product_name, ' 1kg', '')
        when product_name like '% 1L' then replace(product_name, ' 1L', '')
        when product_name like '% 500g' then replace(product_name, ' 500g', '')
        when product_name like '% 250ml' then replace(product_name, ' 250ml', '')
        when product_name like '% 1.5L' then replace(product_name, ' 1.5L', '')
        else product_name
    end as product_name,

    -- 3. Separate Column: Quantity Value
    case 
        when product_name like '% 1kg' then 1.0
        when product_name like '% 1L' then 1.0
        when product_name like '% 500g' then 500.0
        when product_name like '% 250ml' then 250.0
        when product_name like '% 1.5L' then 1.5
        else 1.0
    end as quantity_value,

    -- 4. Separate Column: Quantity Unit
    case 
        when product_name like '% 1kg' then 'kg'
        when product_name like '% 1L' then 'L'
        when product_name like '% 500g' then 'g'
        when product_name like '% 250ml' then 'ml'
        when product_name like '% 1.5L' then 'L'
        else original_uom
    end as quantity_unit

from cleaned_product