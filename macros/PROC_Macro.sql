{% macro PROC_Macro(S) %}
{% set a %}
CALL AUGUST_INSERT({{S}});
{% endset %}
{% do run_query(a) %}
{% endmacro %}