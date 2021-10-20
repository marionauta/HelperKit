#if canImport(UIKit)
import UIKit

extension UIImage {
    /// Creates an `UIImage` from the specified `color` and `size`.
    ///
    ///     let imageOne = UIImage.from(color: .red)
    ///
    ///     let size = CGSize(width: 10, height: 10)
    ///     let imageTen = UIImage.from(color: .red, size: size)
    ///
    /// - Parameters:
    ///     - color: The color to fill the image with.
    ///     - size: The size of the resulting image. Defaults to 1x1.
    public static func from(color: UIColor, size: CGSize = .one) -> UIImage {
        UIGraphicsImageRenderer(size: size).image { context in
            color.setFill()
            context.fill(.init(origin: .zero, size: size))
        }
    }
}
#endif
