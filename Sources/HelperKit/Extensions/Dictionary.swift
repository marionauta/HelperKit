import Foundation

extension Dictionary {
    /// Creates a new dictionary whose keys are the IDs of the sequence elements
    /// and whose values are the elements that have each ID.
    ///
    /// The dictionary will have as many entries as the amount of different IDs.
    /// In the case that two elements share the same ID, only one of the two will
    /// be kept in the resulting dictionary.
    ///
    ///     struct Book: Identifiable {
    ///         let id: Int
    ///         let name: String
    ///     }
    ///
    ///     let books = [Book(id: 1, name: "One"), Book(id: 2, name: "Two")]
    ///     let dict = Dictionary(byID: books)
    ///     // [1: Book(id: 1, name: "One"), 2: Book(id: 2, name: "Two")]
    ///
    /// - Parameter values: A sequence whose elements conform to `Identifiable`.
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    @inlinable public init<S>(byID values: S) where S: Sequence, S.Element == Value, Value: Identifiable, Value.ID == Key {
        var result: [Key: Value] = [:]

        for value in values {
            result[value.id] = value
        }

        self = result
    }

    /// Creates a new dictionary whose keys are the properties returned by the
    /// given closure and whose values are the elements that returned each key.
    ///
    /// If two elements return the same key, only one will be kept. The closure
    /// should return a unique enough key, like an ID.
    ///
    ///     struct Book: Identifiable {
    ///         let id: Int
    ///         let name: String
    ///     }
    ///
    ///     let books = [Book(id: 1, name: "One"), Book(id: 2, name: "Two"), Book(id: 3, name: "Three")]
    ///     let dict1 = Dictionary(storing: books, by: \.id)
    ///     // [1: Book(id: 1, name: "One"), 2: Book(id: 2, name: "Two")]
    ///     let dict2 = Dictionary(storing: books, by: { $0.name.count * 2 })
    ///     // [6: Book(id: 2, name: "Two"), 10: Book(id: 3, name: "Three")]
    ///
    /// - Parameters:
    ///   - values: A sequence of values to store in a dictionary.
    ///   - keyForValue: A closure that returns a key for each element in `values`.
    @inlinable public init<S>(storing values: S, by keyForValue: (S.Element) -> Key) where S: Sequence, S.Element == Value {
        var result: [Key: Value] = [:]

        for value in values {
            result[keyForValue(value)] = value
        }

        self = result
    }
}
