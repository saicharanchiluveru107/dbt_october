{% macro Audit_Mco(args) %}
    current_timestamp() as Loaded_Time,
    current_user() as Loaded_User,
    '{{invocation_id}}' as Dbt_invocation_id
{% endmacro %}