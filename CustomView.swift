import UIKit

@IBDesignable
extension UIView {

    public override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customize()
    }

}

extension UIView {

    func customize() {
        if var view = self as? CustomTextColor {
            view.textColor = view.selected(view.textColorStyle)
        }

        if var view = self as? CustomBackgroundColor {
            view.backgroundColor = view.selected(view.backgroundColorStyle)
        }

        if var view = self as? CustomFont {
            view.font = view.selected(view.fontStyle)
        }
    }

}
