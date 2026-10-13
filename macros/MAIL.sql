{% macro Mail_Macro(A,B,C) %}
    {% set a %}
    call system$send_email ('MAIL_INT','{{A}}','{{B}}','{{C}}')
    {% endset  %}
    {% do run_query(a) %}
{% endmacro %}


--"{'A':'saicharanchiluveru107@gmail.com','B':'SNOWFLAKE REQUIREMENT','C':'Hi Charan, Congratulations'}"