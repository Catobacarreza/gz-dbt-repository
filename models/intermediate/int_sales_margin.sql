SELECT *,
purchase_price*quantity AS purchase_cost,
ROUND (revenue - (purchase_price*quantity),2) AS margin
FROM {{ref ("stg_raw__sales")}}
LEFT JOIN {{ref("stg_raw__product")}}
USING (products_id)