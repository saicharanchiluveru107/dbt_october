{{ config(
    materialized='incremental',
    unique_key='transaction_id'
) }}

SELECT
    t.transaction_id,
    c.customer_sk,
    s.security_sk,
    t.amount,
    t.transaction_type,
    t.transaction_date,
    CASE
        WHEN t.transaction_type = 'PREMIUM' THEN 'REVENUE'
        WHEN t.transaction_type = 'CLAIM' THEN 'EXPENSE'
        ELSE 'OTHER'
    END AS transaction_category,
    CASE
        WHEN t.transaction_type = 'PREMIUM' THEN t.amount
        WHEN t.transaction_type = 'CLAIM' THEN -t.amount
        ELSE 0
    END AS net_amount,
    CASE
        WHEN t.amount >= 1000 THEN 'Y'
        ELSE 'N'
    END AS high_value_flag

FROM {{ ref('stg_transactions') }} t
JOIN {{ ref('dim_customer') }} c
  ON t.customer_id = c.customer_id
JOIN {{ ref('dim_security') }} s
  ON t.security_id = s.security_id

{% if is_incremental() %}
WHERE t.transaction_date > (SELECT MAX(transaction_date) FROM {{ this }})
{% endif %}
