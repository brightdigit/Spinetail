{% include "Includes/Header.stencil" %}

import Foundation

{% if options.modelProtocol %}
public protocol {{ options.modelProtocol }}: Codable, Equatable { }
{% endif %}

{% for type, typealias in options.typeAliases %}
public typealias {{ type }} = {{ typealias }}
{% endfor %}

{% for tag in tags %}
public enum {{ options.tagPrefix }}{{ tag|upperCamelCase }}{{ options.tagSuffix }} {}
{% endfor %}
