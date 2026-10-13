{{
    config(
        materialized='table',
        alias='CAD_CAM'
    )
}}
select * ,
{{Audit_Mco()}}
from ORACLE.RAW_SC.CUSTOMER456