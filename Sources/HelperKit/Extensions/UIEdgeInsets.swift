#if canImport(UIKit)
import UIKit

public extension UIEdgeInsets {
    /// Creates an inset with the same amount on each side.
    ///
    ///     let inset = UIEdgeInsets(all: 16)
    init(all insets: CGFloat) {
        self.init(top: insets, left: insets, bottom: insets, right: insets)
    }

    /// Creates an inset with the same values across horizontal or vertical axes.
    ///
    ///     let inset1 = UIEdgeInsets(horizontal: 16, vertical: 8)
    ///     let inset2 = UIEdgeInsets(horizontal: 24)
    ///     let inset3 = UIEdgeInsets(vertical: 32)
    init(horizontal hInsets: CGFloat = .zero, vertical vInsets: CGFloat = .zero) {
        self.init(top: vInsets, left: hInsets, bottom: vInsets, right: hInsets)
    }
}
#endif
