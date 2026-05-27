select
    sales_id,
    quantity,
    unit_price,
    gross_amount,
    discount_amount,
    net_amount,
   
    (gross_amount - discount_amount) as expected_net_amount
from {{ ref('silver_fact_sales') }}
where 
   
    abs(net_amount - (gross_amount - discount_amount)) > 0.01