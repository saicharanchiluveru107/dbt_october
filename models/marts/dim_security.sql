SELECT
    {{ generate_surrogate_key(['security_id']) }} AS security_sk,
    security_id,
    product_name,
    product_type,
    risk_level,
    CASE
        WHEN risk_level = 'LOW' THEN 'SAFE'
        WHEN risk_level = 'MEDIUM' THEN 'MODERATE'
        WHEN risk_level = 'HIGH' THEN 'RISKY'
        ELSE 'UNKNOWN'
    END AS risk_category

FROM {{ ref('stg_securities') }}