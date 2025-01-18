# Swift Opentelemetry Semantic Conventions

[![SemConv][semconv-badge]][semconv-url]

This repo contains Swift support for the [OpenTelemetry Semantic Convention Attribute Registry](https://opentelemetry.io/docs/specs/semconv/attributes-registry/).

Using this repo has the following benefits:

1. Avoids misspellings or propagation of nonstandard attribute names
2. OpenTelemetry deprecation is automatically marked in Swift
3. Attribute documentation is automatically integrated into code editors

## Usage

### Span Attributes

This package vends type-aware extensions on `SpanAttributes` for each OTEL attribute:

```swift
withSpan("showAttributes") { span in
    // Primitive and array types use Swift primitives
    span.attributes.http.response.status_code = 200
    span.attributes.host.ip = ["192.168.1.140", "fe80::abc2:4a28:737a:609e"]
    
    // Enum types are presented as Swift enums
    span.attributes.http.request.method = .post
    
    // Template types can be set dynamically
    span.attributes.http.request.header.set("X-Foo", to: ["bar", "baz"])
}
```

### Attribute Names

This package vends each OTEL attribute name as a static string property on the `SemConv` type. To use them, simply reference the static properties when creating span attributes or log metadata instead of string literals:

```swift
// Span Attributes
withSpan("showAttributes") { span in
  span.attributes[SemConv.http.request.method] = "POST"
  span.attributes[SemConv.http.response.status_code] = 200
}

// Logging Metadata
logger[metadataKey: .init(name: OTelAttributes.http.request.method)] = "POST"
logger[metadataKey: .init(name: OTelAttributes.http.response.status_code)] = "200"
```

## Contributing

### Generation

For details on generation, see the [Generator](./Generator) subdirectory.

OpenTelemetry provides the [Weave semantic convention generation tool](https://github.com/open-telemetry/weaver/blob/main/crates/weaver_forge/README.md).
However, this package uses a Swift generator instead for the following reasons:

- To support the desired API where Swift usage nests namespaces with the `.` notation just like the attributes, a namespace tree must be constructed and traversed. Doing this in the Weaver Jinja templating language is difficult.
- Swift will be more familiar than Jinja templates to users of this package, leading to easier maintenance.

[semconv-badge]: https://img.shields.io/badge/semconv-1.29.0-blue.svg
[semconv-url]: https://github.com/open-telemetry/semantic-conventions.git
