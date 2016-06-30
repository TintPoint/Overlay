import UIKit

extension UIButton {

    override func customize() {
        super.customize()

        if let customizable = self as? CustomButtonTitleColor {
            customizable.setTitleColor(customizable.titleColorStyle.color(), for: [])

            if let titleColorGroup = customizable.titleColorStyle as? ColorStyleGroup {
                customizable.setTitleColor(titleColorGroup.highlightedColor(), for: .highlighted)
                customizable.setTitleColor(titleColorGroup.disabledColor(), for: .disabled)
                customizable.setTitleColor(titleColorGroup.selectedColor(), for: .selected)
            }
        }
    }

}
