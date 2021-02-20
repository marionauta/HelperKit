import Foundation

extension Optional {
    /// Returns `true` if the optional is a `none` value.
    public var isNone: Bool {
        return self == nil
    }

    /// Returns `true` if the optional is a `some` value.
    public var isSome: Bool {
        return !isNone
    }
}
