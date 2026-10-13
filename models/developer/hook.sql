{{
    config(
        materialized='table',
        database='ORACLE',
        schema='RAW_SC_I',
        query_tag='icn456',
        alias='hook_dbt',
        pre_hook=["{{hook_mco(var('xxx'))}}"],
        post_hook=["Alter warehouse VWH_XL suspend"]
    )
}}

select * from ORACLE.RAW_SC.CAD_CAM0111

--select '{{ var('xxx') }}'