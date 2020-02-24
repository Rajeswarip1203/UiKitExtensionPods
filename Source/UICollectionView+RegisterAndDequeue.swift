import UIKit

extension UICollectionReusableView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

public extension UICollectionView {
    func register<T: UICollectionViewCell>(_ type: T.Type) {
        let reuseIdentifier = type.defaultReuseIdentifier
        self.register(type.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    func registerHeaderView<T: UICollectionReusableView>(_ type: T.Type) {
        self.register(
            type.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: type.defaultReuseIdentifier
        )
    }

    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(
            withReuseIdentifier: T.defaultReuseIdentifier,
            for: indexPath) as? T else {
                fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }

        return cell
    }

    func dequeueHeaderView<T: UICollectionReusableView>(for indexPath: IndexPath) -> T {
        guard let headerView = self.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: T.defaultReuseIdentifier,
            for: indexPath) as? T else {
                fatalError("Could not header view with identifier: \(T.defaultReuseIdentifier)")
        }

        return headerView
    }
}
