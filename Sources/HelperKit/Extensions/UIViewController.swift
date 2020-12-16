#if canImport(UIKit)
import UIKit

extension UIViewController {
    /// Shorthand for the view controller's view safe area layout guide.
    /// The portion of the view that is unobscured by bars and other content.
    @available(iOS 11.0, *)
    public var safeArea: UILayoutGuide {
        view.safeAreaLayoutGuide
    }

    /// Shorthand for the view controller's view readable content layout guide.
    /// An area with a readable width within the view.
    public var readableArea: UILayoutGuide {
        view.readableContentGuide
    }
}
#endif
