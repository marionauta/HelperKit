import Foundation

/// An Identifier tied to an `Owner` type, with generic underlying value.
///
/// ```swift
/// struct Feature: Identifiable {
///     let id: Identifier<Self, String>
/// }
/// ```
public struct Identifier<Owner, Value: Hashable>: Hashable {
    public let value: Value

    public init(_ value: Value) {
        self.value = value
    }
}

extension Identifier: Codable where Value: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.value = try container.decode(Value.self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}
