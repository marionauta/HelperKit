import Foundation

extension String {
    /// Returns a localized string, using the main bundle.
    ///
    ///     let hi = "Hello, World!".localized
    public var localized: String {
        NSLocalizedString(self, value: "**\(self)**", comment: "")
    }

    /// Returns a localized string, using the main bundle, and formats it using `String(format:arguments:)`.
    ///
    ///     let hi = "Hello, %@!".localized("Swift")
    public func localized(_ arguments: CVarArg...) -> String {
        String(format: localized, arguments: arguments)
    }
}

// MARK: - Empty

extension String {
    /// The empty string
    public static let empty = ""

    /// Returns `nil` if the string is empty
    @inlinable
    public var nilIfEmpty: String? {
        isEmpty ? nil : self
    }

    /// Returns `self` if it has characters, or `replacement` if it doesn't.
    ///
    /// - Parameter replacement: the value that replaces `self` when it's empty.
    @inlinable
    public func whenEmpty(_ replacement: String) -> String {
        isEmpty ? replacement : self
    }
}

extension Optional where Wrapped == String {
    /// A Boolean value indicating whether a string has no characters.
    @inlinable
    public var isEmpty: Bool {
        switch self {
        case .none:
            return true
        case let .some(wrapped):
            return wrapped.isEmpty
        }
    }

    /// Returns `self` if it has characters, or `replacement` if it doesn't.
    ///
    /// - Parameter replacement: the value that replaces `self` when it's empty.
    @inlinable
    public func whenEmpty(_ replacement: String) -> String {
        switch self {
        case .none:
            return replacement
        case let .some(wrapped):
            return wrapped.whenEmpty(replacement)
        }
    }
}
