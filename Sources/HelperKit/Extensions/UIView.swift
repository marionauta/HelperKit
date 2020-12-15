#if canImport(UIKit)
import UIKit

extension UIView {
    /// Allows to add multiple subviews to the current view, the amount can be variable
    ///
    ///     let view1 = UIView()
    ///     let view2 = UIView()
    ///     ...
    ///     let viewN = UIView()
    ///     view.addSubviews(view1, view2, ..., viewN)
    ///
    /// - Parameter views: The views to add as subviews
    public func addSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}
#endif
