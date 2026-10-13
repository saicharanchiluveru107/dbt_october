select CUSTOMER_ID,CUSTOMER_NAME,
{{ dbt_utils.generate_surrogate_key(['CUSTOMER_ID', 'CUSTOMER_NAME']) }} SKEY

 from {{ source('CBIT', 'CUSTOMERS') }}