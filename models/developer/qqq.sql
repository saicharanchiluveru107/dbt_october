{{
    config(
        materialized='table',
        alias='MVSR',
        query_tag='ICW123'
    )
}}

SELECT UPPER(CC_NAME) as NAME,
UPPER(CC_CLASS) as CLASS,
UPPER(CC_MANAGER) as MANAGER,
UPPER(CC_MARKET_MANAGER) as MARKET_MANAGER
 FROM {{ source('september', 'CALL_CENTER') }}