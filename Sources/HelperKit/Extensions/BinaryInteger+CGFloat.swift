#if canImport(CoreGraphics)
import CoreGraphics

extension BinaryInteger {
    /// Returns the value casted to `CGFloat`.
    public var cg: CGFloat { CGFloat(self) }
}
#endif
