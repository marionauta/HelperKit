import Foundation

// Based on: https://swiftbysundell.com/articles/custom-query-functions-using-key-paths/

public prefix func ! <T>(keyPath: KeyPath<T, Bool>) -> (T) -> Bool {
    return { !$0[keyPath: keyPath] }
}

public func == <T, V: Equatable>(lhs: KeyPath<T, V>, rhs: V) -> (T) -> Bool {
    return { $0[keyPath: lhs] == rhs }
}
