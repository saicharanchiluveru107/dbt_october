{{
    config(
        materialized='table',
        alias='Sreenidhi',
        database='IPL',
        schema='SC',
        query_tag='EAMCET'
    )
}}

select
NVL(concat(C_SALUTATION,' ',C_FIRST_NAME,' ',C_LAST_NAME),'N/A') as "FULL NAME",
NVL(Initcap(C_BIRTH_COUNTRY),'N/A') as BIRTH_COUNTRY,
C_CURRENT_ADDR_SK as CURRENT_ADDR
from {{ source('january', 'CUSTOMER') }}


