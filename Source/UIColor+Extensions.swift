import Foundation

extension UIColor {
    public func darker(by percentage: CGFloat = 30.0) -> UIColor {
        return self.adjustBrightness(by: -1 * abs(percentage) )
    }

    // swiftlint:disable control_statement
    private func adjustBrightness(by percentage: CGFloat) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        if (self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)) {
            return UIColor(red: min(red + percentage/100, 1.0),
                           green: min(green + percentage/100, 1.0),
                           blue: min(blue + percentage/100, 1.0),
                           alpha: alpha)
        }
        // swiftlint:enable control_statement
        return self
    }
}
