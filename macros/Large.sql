{% macro Large_Num(A,B) %}
    {% if A>B %}
        {{A}}
    {% else  %}
        {{B}}
    {% endif %}
{% endmacro %}



SELECT {{Large_Num(20,500)}}