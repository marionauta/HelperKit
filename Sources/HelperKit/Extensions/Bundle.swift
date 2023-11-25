import Foundation

extension Bundle {
    /// The app full version string. Includes version and build number.
    @inlinable
    public var fullVersionString: String {
        "\(versionString) (\(buildNumber))"
    }

    /// The app version string
    ///
    /// Value `CFBundleShortVersionString` from the Info.plist dictionary.
    @inlinable
    public var versionString: String {
        return infoDictionary?["CFBundleShortVersionString"] as! String
    }

    /// The app build number
    ///
    /// Value `CFBundleVersion` from the Info.plist dictionary.
    @inlinable
    public var buildNumber: String {
        return infoDictionary?["CFBundleVersion"] as! String
    }
}
