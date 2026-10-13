
{{
    config(
        materialized='TABLE',
        transient=false
    )
}}

SELECT upper(CUSTOMER_NAME) CUSTOMER_NAME,
       upper(CITY) CITY,
       upper(STATE) STATE,
       upper(COUNTRY) COUNTRY
       FROM IPL.SC.CUSTOMERS;



