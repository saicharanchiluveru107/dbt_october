{{
    config(
        materialized='table',
        database='INSURANCE_DB',
        schema='SILVER_SC',
        alias='SILVER_CUTOMER_ORDERS',
        tags=['daily']
    )
}}

SELECT ID, 
    TRIM(CUST_ID) CUST_ID,  
regexp_replace(ORD_ID,'[^0-9]') ORD_ID,
INITCAP(F_NAME) F_NAME, 
NVL(INITCAP(M_NAME),'N/A') M_NAME, 
INITCAP(L_NAME) L_NAME,
INITCAP((F_NAME || ' ' || NVL(M_NAME,'') || ' ' || L_NAME)) FULL_NAME,
CASE WHEN  GENDER = 'M' THEN 'MALE'
     WHEN  GENDER = 'F' THEN 'FEMALE'
     WHEN  GENDER IS NULL THEN 'N/A'
END GENDER,
DOB, 
DATEDIFF(YEAR,DOB,current_date()) AGE_DIFF,
date_part(YEAR,DOB) Current_Year,
date_part(month,DOB) Current_Month,
initcap(EMAIL) EMAIL, 
initcap(split_part(EMAIL,'@',2)) Domain,
IS_ACTIVE,
decode(IS_ACTIVE,'YES','ACTIVE','NO','NOT ACTIVE') STATUS
FROM {{ source('CVR', 'CUSTOMER_ORDERS') }}