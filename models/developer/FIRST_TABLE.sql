{{
    config(
        materialized='table',
        transient=true
    )
}}
SELECT COUNTRY_ID,
upper(COUNTRY_NAME) COUNTRY_NAME,
REGION_ID
FROM IPL.SC.CUSTOMERS


