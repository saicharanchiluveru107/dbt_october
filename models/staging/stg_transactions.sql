SELECT
TRANSACTION_ID,
CUSTOMER_ID,
SECURITY_ID,
AMOUNT,
TRANSACTION_TYPE,
TRANSACTION_DATE
FROM {{ source('ins_raw', 'raw_transactions') }}
WHERE amount >= {{ var('min_transaction_amount') }}