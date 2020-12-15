import Foundation

public protocol Apply {}

extension Apply where Self: AnyObject {
    /// Calls the closure with `self` as its argument and returns `self`.
    ///
    ///     let button = UIButton(type: .system).apply {
    ///         $0.setTitleColor(.black, for: .normal)
    ///         $0.setTitleColor(.gray, for: .disabled)
    ///     }
    @inlinable public func apply(closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}

extension NSObject: Apply {}
