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
}
