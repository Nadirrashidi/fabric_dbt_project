{% snapshot scd_dim_customer %}

{{
    config(
      target_schema='bronze',
      unique_key='customer_sk',
      strategy='check',
      check_cols=['first_name','last_name', 'email', 'phone', 'city']
    )
}}

select * from {{ source('Source', 'dim_customer') }}

{% endsnapshot %}