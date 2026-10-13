SELECT DISTINCT
    customer_id,
    'DEFAULT_PORTFOLIO' AS portfolio_name
FROM {{ ref('stg_transactions') }}
