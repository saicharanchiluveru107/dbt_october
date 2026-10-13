{{
    config(
        materialized='table',
        database='ORACLE',
        schema='PUBLIC'
    )
}}

select * from ORACLE.RAW_SC.CUSTOMERS