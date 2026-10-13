{% set xxx='small' %}

select * from {{ source('september', 'CALL_CENTER') }}
where CC_CLASS='{{xxx}}' 





