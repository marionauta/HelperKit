#if canImport(CoreGraphics)
import CoreGraphics

extension BinaryFloatingPoint {
    /// Returns the value casted to `CGFloat`.
    public var cg: CGFloat { CGFloat(self) }
}
#endif
