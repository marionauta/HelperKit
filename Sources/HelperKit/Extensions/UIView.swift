#if canImport(UIKit)
import UIKit

extension UIView {
    /// Adds multiple subviews to the current view. The amount can be variable.
    ///
    ///     let view1 = UIView()
    ///     let view2 = UIView()
    ///     // ...
    ///     let viewN = UIView()
    ///     view.addSubviews(view1, view2, viewN)
    ///
    /// Calls to this method can be nested, providing a clear representation of the view tree.
    ///
    ///     let view1 = UIView()
    ///     let view2 = UIView()
    ///     let view3 = UIView()
    ///     view.addSubviews(
    ///         view1,
    ///         view2.addSubviews(view3)
    ///     )
    ///
    /// - Parameter views: The views to add as subviews.
    @discardableResult
    public func addSubviews(_ views: UIView...) -> Self {
        for view in views {
            addSubview(view)
        }

        return self
    }
}
#endif
