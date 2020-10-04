import Foundation

public extension Array {
    /// Accesses the element at the specified position, if in bounds.
    ///
    ///     let array = [10, 20, 30, 40]
    ///     array[safe: 3] // Optional(40)
    ///     array[safe: 4] // nil
    ///
    @inlinable subscript(safe index: Int) -> Element? {
        guard index >= startIndex, index < endIndex else { return nil }
        return self[index]
    }
}
