SELECT 
finance_days.date_date,
ROUND ((SUM (operational_margin) - SUM(ads_cost)),2) AS ads_margin,
ROUND(SUM(avg_basket),2) AS avg_basket,
ROUND(SUM(operational_margin),2) AS operational_margin,
ROUND(SUM(ads_cost),2) AS ads_cost
FROM {{ref('finance_days')}}
JOIN {{ref('int_campaigns_day')}}
ON finance_days.date_date = int_campaigns_day.date_date
GROUP BY finance_days.date_date
ORDER BY finance_days.date_date DESC