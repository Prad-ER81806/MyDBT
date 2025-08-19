{% macro case_by(inp_column_name) %}
       case
        when {{ inp_column_name }} in ('BUILDING', 'HOUSEHOLD', 'FURNITURE')
        then 'HOMES_SEGMENT'
        else 'MACHINES_SEGMENT'
        end
{% endmacro %}