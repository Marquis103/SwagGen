import JSONUtilities

extension {{ options.name }}{% if tag %}.{{ options.tagPrefix }}{{ tag|upperCamelCase }}{{ options.tagSuffix }}{% endif %} {

    {% if description %}
    /** {{ description }} */
    {% endif %}
    public class {{ operationId|upperCamelCase }}: APIRequest<{{successType|default:"Void"}}> {

        public static let service = APIService<{{successType|default:"Void"}}>(id: "{{ operationId }}", tag: "{{ tag }}", method: "{{ method|uppercase }}", path: "{{ path }}", hasBody: {% if hasBody %}true{% else %}false{% endif %}{% if security %}, authorization: Authorization(type: "{{ security.name }}", scope: "{{ security.scope }}"){% endif %}, decode: {% if successType %}JSONDecoder.decode{% else %}{ _ in }{% endif %})
        {% for enum in enums %}
        {% if not enum.isGlobal %}

        {% if enum.description %}
        /** {{ enum.description }}  */
        {% endif %}
        public enum {{enum.enumName}}: String {
            {% for enumCase in enum.enums %}
            case {{enumCase.name}} = "{{enumCase.value}}"
            {% endfor %}
        }
        {% endif %}
        {% endfor %}
        {% if nonBodyParams %}

        public struct Options {
            {% for param in nonBodyParams %}

            {% if param.description %}
            /** {{ param.description }} */
            {% endif %}
            public var {{ param.formattedName }}: {{ param.optionalType }}
            {% endfor %}

            public init({% for param in nonBodyParams %}{{param.formattedName}}: {{param.optionalType}}{% ifnot param.required %} = nil{% endif %}{% ifnot forloop.last %}, {% endif %}{% endfor %}) {
                {% for param in nonBodyParams %}
                self.{{param.formattedName}} = {{param.formattedName}}
                {% endfor %}
            }
        }

        public var options: Options
        {% endif %}
        {% if bodyParam %}

        public var body: {{bodyParam.optionalType}}
        {% endif %}

        public init({% if bodyParam %}_ {{ bodyParam.formattedName}}: {{ bodyParam.optionalType }}{% if nonBodyParams %}, {% endif %}{% endif %}{% if nonBodyParams %}_ options: Options{% endif %}) {
            {% if bodyParam %}
            self.body = {{ bodyParam.formattedName}}
            {% endif %}
            {% if nonBodyParams %}
            self.options = options
            {% endif %}
            super.init(service: {{ operationId|upperCamelCase }}.service)
        }
        {% if nonBodyParams %}

        public convenience init({% for param in params %}{{ param.formattedName }}: {{ param.optionalType }}{% ifnot param.required %} = nil{% endif %}{% ifnot forloop.last %}, {% endif %}{% endfor %}) {
            {% if nonBodyParams %}
            let options = Options({% for param in nonBodyParams %}{{param.formattedName}}: {{param.formattedName}}{% ifnot forloop.last %}, {% endif %}{% endfor %})
            {% endif %}
            self.init({% if bodyParam %}{{ bodyParam.formattedName}}{% if nonBodyParams %}, {% endif %}{% endif %}{% if nonBodyParams %}options{% endif %})
        }
        {% endif %}
        {% if pathParams %}

        public override var path: String {
            return super.path{% for param in pathParams %}.replacingOccurrences(of: "{" + "{{ param.name }}" + "}", with: "\(self.options.{{ param.encodedValue }})"){% endfor %}
        }
        {% endif %}
        {% if bodyParam or nonBodyParams %}

        public override var parameters: [String: Any] {
            {% if bodyParam %}
            return {{ bodyParam.encodedValue }}
            {% endif %}
            {% if nonBodyParams %}
            var params: JSONDictionary = [:]
            {% for param in nonBodyParams %}
            {% if param.optional %}
            if let {{ param.formattedName }} = options.{{ param.encodedValue }} {
              params["{{ param.value }}"] = {{ param.formattedName }}
            }
            {% else %}
            params["{{ param.value }}"] = options.{{ param.encodedValue }}
            {% endif %}
            {% endfor %}
            return params
            {% endif %}
        }
        {% endif %}
    }
}
