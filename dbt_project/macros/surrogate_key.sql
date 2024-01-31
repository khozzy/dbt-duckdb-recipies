{% macro surrogate_key(entity_name, col_names, prefix="_KEY_") %}
    {{ dbt_utils.generate_surrogate_key(col_names) }} as {{ prefix ~ entity_name }}
{% endmacro %}
