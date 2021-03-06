import Foundation

extension Array {
    /// Unwraps and filters out `nil` elements.
    public func filterNil<T>() -> Array<T> where Element == Optional<T> {
        return filter(\.isSome).map(\.unsafelyUnwrapped)
    }

    /// Unwraps and replaces `nil` elements with `default`.
    ///
    /// - Parameter default: The value to use when `nil` is encountered.
    public func replaceNilWith<T>(default: T) -> Array<T> where Element == Optional<T> {
        return map { $0 ?? `default` }
    }
}
