import Foundation

extension UILayoutPriority {
    static func + (lhs: UILayoutPriority, rhs: Float) -> UILayoutPriority {
        let updatedRawValue = min(UILayoutPriority.required.rawValue, max(1, lhs.rawValue + rhs))
        return UILayoutPriority(rawValue: updatedRawValue)
    }

    static func - (lhs: UILayoutPriority, rhs: Float) -> UILayoutPriority {
        let updatedRawValue = max(1, min(UILayoutPriority.required.rawValue, lhs.rawValue - rhs))
        return UILayoutPriority(rawValue: updatedRawValue)
    }
}
