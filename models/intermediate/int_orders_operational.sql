SELECT 
orders_id,
date_date,
revenue,
margin,
quantity,
CAST ((margin + shipping_fee - log_cost - ship_cost) AS FLOAT64) AS operational_margin
FROM {{ref("int_sales_margin")}}
LEFT JOIN {{ref("stg_raw__ship")}}
USING(orders_id)