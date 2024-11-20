{% macro input_file(model_file, seed_file ) %}

    {% if var('to_test',false) == true %}
        {{seed_file}}
    {% else %}
        {{model_file}}
    {% endif %}

{% endmacro %}