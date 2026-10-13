SELECT
    {{ generate_surrogate_key(['c.customer_id']) }} AS customer_sk,
    c.customer_id,
    c.full_name,
    c.email,
    c.country,
    cc.region,
    CASE
        WHEN cc.region = 'North America' THEN 'NA_CUSTOMER'
        WHEN cc.region = 'Europe' THEN 'EU_CUSTOMER'
        WHEN cc.region = 'Asia' THEN 'APAC_CUSTOMER'
        ELSE 'OTHER_CUSTOMER'
    END AS customer_segment

FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('country_codes') }} cc
  ON c.country = cc.country