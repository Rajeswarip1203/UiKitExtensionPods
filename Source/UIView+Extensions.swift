extension UIView {
    public func addBorder(color: UIColor, width: CGFloat) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }

    public func makeCircularShape() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }

    public func applyShadowEffect(opacity: Float,
                                  shadowRadius: CGFloat,
                                  shadowColor: UIColor,
                                  shadowOffset: CGSize = .zero,
                                  size: CGSize) {
        clipsToBounds = false
        layer.masksToBounds = false
        layer.bounds = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = opacity
        layer.shadowRadius = shadowRadius
        layer.shadowOffset = shadowOffset
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    }

    public func applyShadowEffect(opacity: Float = 0.2,
                                  shadowRadius: CGFloat = 0,
                                  shadowColor: UIColor = UIColor.black,
                                  shadowOffset: CGSize = .zero) {
        layer.masksToBounds = false
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = opacity
        layer.shadowRadius = shadowRadius
        layer.shadowOffset = shadowOffset
    }

    public func removeShadowEffect() {
        layer.shadowColor = UIColor.clear.cgColor
        layer.shadowOpacity = 0.0
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 0.0
    }

    public func needsLayout() {
        setNeedsLayout()
        layoutIfNeeded()
    }

}
