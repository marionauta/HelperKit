import Foundation

public extension URL {
    /// Returns a URL constructed by appending the given query parameter to self.
    ///
    /// Both parameters, `name` and `value`, are used to build a `URLQueryItem`.
    ///
    /// - Parameters:
    ///     - name: query item name.
    ///     - value: query item value.
    func appendingQueryParameter(name: String, value: String?) -> URL {
        guard var components = URLComponents(url: self, resolvingAgainstBaseURL: true) else { return self }

        var queryItems = components.queryItems ?? []
        queryItems.append(URLQueryItem(name: name, value: value))
        components.queryItems = queryItems

        return components.url ?? self
    }

    /// Appends a query parameter to the URL.
    ///
    /// Both parameters, `name` and `value`, are used to build a `URLQueryItem`.
    ///
    /// - Parameters:
    ///     - name: query item name.
    ///     - value: query item value.
    mutating func appendQueryParameter(name: String, value: String?) {
        self = appendingQueryParameter(name: name, value: value)
    }
}
