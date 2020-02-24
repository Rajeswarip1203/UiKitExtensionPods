import UIKit

public protocol ReusableView: class {
    func prepareForReuse()
}

public class CollectionViewCell<ContentView>: UICollectionViewCell where ContentView: UIView {
    public let view = ContentView()
    public weak var reusableViewDelegate: ReusableView?

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("This view is not designed to be used with xib or storyboard files")
    }

    private func setup() {
        contentView.addSubview(view)
        view.pinToSuperviewEdges()
        accessibilityIdentifier = view.accessibilityIdentifier
    }

    override public func prepareForReuse() {
        reusableViewDelegate?.prepareForReuse()
        super.prepareForReuse()
    }
}
