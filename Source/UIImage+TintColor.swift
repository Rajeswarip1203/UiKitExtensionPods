import UIKit

extension UIImage {
    public func tint(with color: UIColor, imageSize: CGSize? = nil) -> UIImage {
        let requiredImageSize: CGSize
        if let size = imageSize {
            requiredImageSize = size
        } else {
            requiredImageSize = size
        }

        let image = withRenderingMode(.alwaysTemplate)
        UIGraphicsBeginImageContextWithOptions(requiredImageSize, false, scale)
        color.set()

        image.draw(in: CGRect(origin: .zero, size: requiredImageSize))
        guard let imageFromContext = UIGraphicsGetImageFromCurrentImageContext() else {
            assertionFailure("Tinted image could not be returned")
            return image
        }
        UIGraphicsEndImageContext()
        return imageFromContext
    }

    public static func image(with color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

}
