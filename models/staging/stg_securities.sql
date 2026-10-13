SELECT
    security_id,
    product_name,
    product_type,
    risk_level
FROM {{ source('ins_raw', 'raw_securities') }}