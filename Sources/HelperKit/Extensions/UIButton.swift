#if canImport(UIKit)
import UIKit

extension UIButton {
    /// Sets the background color to use for the specified button state.
    ///
    /// In general, if a property is not specified for a state, the default is to use the `normal` value.
    /// If the `normal` value is not set, then the property defaults to a system value.
    /// Therefore, at a minimum, you should set the value for the normal state.
    ///
    /// - Parameters:
    ///     - color: The background color to use for the specified state.
    ///     - state: The state that uses the specified image. The values are described in `UIControl.State`.
    public func setBackgroundColor(_ color: UIColor?, for state: UIControl.State) {
        let image = color.map { color in UIImage.from(color: color) }
        setBackgroundImage(image, for: state)
    }
}
#endif
