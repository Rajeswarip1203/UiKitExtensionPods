import UIKit

public class AspectRatioConstraint {
    private var aspectRatioConstraint: NSLayoutConstraint?
    private weak var view: UIView?

    public var aspectRatio: CGFloat? {
        didSet {
            updatedConstraint()
        }
    }

    public var priority: UILayoutPriority = .required {
        didSet {
            updatedConstraint()
        }
    }

    public init(view: UIView) {
        self.view = view
    }

    private func updatedConstraint() {
        if let oldImageAspectRatio = aspectRatioConstraint {
            oldImageAspectRatio.isActive = false
        }

        if let aspectRatio = aspectRatio {
            addConstraint(aspectRatio: aspectRatio)
        }
    }

    private func addConstraint(aspectRatio: CGFloat) {
        guard let view = view else {
            return assertionFailure("Updating constraint on out-of-scope view")
        }

        aspectRatioConstraint = NSLayoutConstraint(item: view,
                                                   attribute: .width,
                                                   relatedBy: .equal,
                                                   toItem: view,
                                                   attribute: .height,
                                                   multiplier: aspectRatio,
                                                   constant: 0)

        aspectRatioConstraint?.priority = priority
        aspectRatioConstraint?.isActive = true
    }
}
