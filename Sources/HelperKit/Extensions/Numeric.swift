import Foundation

public extension Numeric {
    /// Returns the amount of screen points in given units.
    ///
    /// A unit represents 8 screen points.
    ///
    ///     let padding = 2.units // 16 points
    ///     let margin = 2.5.units // 20 points
    var units: Self {
        return self * 8
    }
}
