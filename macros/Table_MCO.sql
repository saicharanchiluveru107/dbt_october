{% macro Tab_MCO(args) %}
    {% set a %}
    CREATE OR REPLACE TABLE ORACLE.RAW_SC.JAN_2026 CLONE ORACLE.RAW_SC.AUGUST_2026
    {% endset %}
    {% do run_query(a) %}
{% endmacro %}