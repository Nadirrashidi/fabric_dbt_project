{% macro generate_discount_tier(column_name) %}

    case 
        when {{ column_name }} is null or {{ column_name }} = 0 then 'No Discount'
        when {{ column_name }} > 0 and {{ column_name }} <= 10 then 'Low Discount'
        when {{ column_name }} > 10 and {{ column_name }} <= 50 then 'Medium Discount'
        else 'High Discount'
    end

{% endmacro %}