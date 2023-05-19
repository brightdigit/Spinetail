{% include "Includes/Header.stencil" %}

import Foundation
import PrchModel

extension {% if tag %}{{ options.tagPrefix }}{{ tag|upperCamelCase }}{{ options.tagSuffix }}{% endif %} {

    {% if description and summary %}
    {% if description == summary %}
    /** {{ description }} */
    {% else %}
    /**
    {{ summary }}

    {{ description }}
    */
    {% endif %}
    {% else %}
    {% if description %}
    /** {{ description }} */
    {% endif %}
    {% if summary %}
    /** {{ summary }} */
    {% endif %}
    {% endif %}
    public struct {{ type }} : ServiceCall {

        public static let pathTemplate = "{{ path }}"
        
        public var method : RequestMethod {
            .{{ method|uppercase }}
        }
        
        {% for param in nonBodyParams %}
        
        {% if param.description %}
        /** {{ param.description }} */
        {% endif %}
        public var {{ param.name }}: {{ param.optionalType }}
        {% endfor %}
        
        //public static let service = APIService<Response>(id: "{{ operationId }}", tag: "{{ tag }}", method: "{{ method|uppercase }}", path: "{{ path }}", hasBody: {% if hasBody %}true{% else %}false{% endif %}{% if isUpload %}, isUpload: true{% endif %}, securityRequirements: [{% for securityRequirement in securityRequirements %}SecurityRequirement(type: "{{ securityRequirement.name }}", scopes: [{% for scope in securityRequirement.scopes %}"{{ scope }}"{% ifnot forloop.last %}, {% endif %}{% endfor %}]){% ifnot forloop.last %}, {% endif %}{% endfor %}])
        {% for enum in requestEnums %}
        {% if not enum.isGlobal %}

        {% filter indent:8 %}{% include "Includes/Enum.stencil" enum %}{% endfilter %}
        {% endif %}
        {% endfor %}
        
        public typealias SuccessType = {{ successType|default:"Empty"}}
    }
}
