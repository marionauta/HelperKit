import Foundation

public extension String {
    /// Returns a localized string, using the main bundle.
    ///
    ///     let hi = "Hello, World!".localized
    var localized: String {
        NSLocalizedString(self, value: "**\(self)**", comment: "")
    }

    /// Returns a localized string, using the main bundle, and formats it using `String(format:arguments:)`.
    ///
    ///     let hi = "Hello, %@!".localized("Swift")
    func localized(_ arguments: CVarArg...) -> String {
        return String(format: localized, arguments: arguments)
    }
}
