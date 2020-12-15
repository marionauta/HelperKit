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
        return String(format: localized, arguments: arguments)
    }
}
