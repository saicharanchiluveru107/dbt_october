

{% macro Table_macro(args) %}
{% set a %}
CREATE OR REPLACE TABLE AUGUST_2026(ID NUMBER)
{% endset  %}
{% do run_query(a)  %}
    {% endmacro %}