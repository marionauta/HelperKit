import UIKit

public extension UIViewController {
    @available(iOS 11.0, *)
    var safeArea: UILayoutGuide {
        view.safeAreaLayoutGuide
    }
}
