
{% macro Mat_vw(A,B) %}
{% set C %}
    CREATE OR REPLACE MATERIALIZED VIEW {{'A'}} 
    AS
    SELECT * FROM {{'B'}}
{% endset  %}
{% do run_query(C) %}
{% endmacro %}