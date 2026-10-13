{{
    config(
        store_failures=true,
        alias='Mail_Null'
    )
}}
select * from {{ ref('Cust') }}
where CUSTOMER_ID
 is null