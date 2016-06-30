import UIKit

protocol ViewCustomizable {

    func selected(_ colorStyle: ColorStyle) -> UIColor?
    func selected(_ fontStyle: FontStyle) -> UIFont?

}

extension ViewCustomizable {

    func selected(_ colorStyle: ColorStyle) -> UIColor? {
        guard let colorStyleGroup = colorStyle as? ColorStyleGroup else {
            return colorStyle.color()
        }

        if let view = self as? ViewHighlightable where view.isHighlighted {
            return colorStyleGroup.highlightedColor()
        } else if let view = self as? ViewSelectable where view.isSelected {
            return colorStyleGroup.selectedColor()
        } else if let view = self as? ViewDisable where !view.isEnabled {
            return colorStyleGroup.disabledColor()
        } else if let view = self as? ViewFocusable where view.isFocused {
            return colorStyleGroup.focusedColor()
        } else {
            return colorStyleGroup.color()
        }
    }

    func selected(_ fontStyle: FontStyle) -> UIFont? {
        return fontStyle.font()
    }

}

protocol ViewFocusable {

    var isFocused: Bool { get }

}

protocol ViewDisable {

    var isEnabled: Bool { get }

}

protocol ViewSelectable {

    var isSelected: Bool { get }

}

protocol ViewHighlightable {

    var isHighlighted: Bool { get }

}

extension UIView: ViewFocusable { }

extension UIControl: ViewDisable, ViewSelectable, ViewHighlightable { }

extension UITableViewCell: ViewSelectable, ViewHighlightable { }

extension UILabel: ViewDisable, ViewHighlightable { }

extension UIImageView: ViewHighlightable { }
