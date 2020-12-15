#if canImport(UIKit)
import UIKit

extension UIViewController {
    /// Shorthand for the view controller's view safe area layout guide.
    /// The portion of the view that is unobscured by bars and other content.
    @available(iOS 11.0, *)
    public var safeArea: UILayoutGuide {
        view.safeAreaLayoutGuide
    }
}
#endif
