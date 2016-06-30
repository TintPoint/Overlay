import UIKit

protocol ColorStyle {

    func color() -> UIColor

}

protocol ColorStyleGroup: ColorStyle {

    func disabledColor() -> UIColor?
    func selectedColor() -> UIColor?
    func highlightedColor() -> UIColor?
    func focusedColor() -> UIColor?

}

extension ColorStyleGroup {

    func disabledColor() -> UIColor? {
        return nil
    }

    func selectedColor() -> UIColor? {
        return nil
    }

    func highlightedColor() -> UIColor? {
        return nil
    }

    func focusedColor() -> UIColor? {
        return nil
    }

}

struct Color: ColorStyle {

    private let colorStorage: UIColor

    init(_ color: UIColor) {
        colorStorage = color
    }

    func color() -> UIColor {
        return colorStorage
    }
}

struct ColorGroup: ColorStyleGroup {

    private let normalColorStorage: UIColor
    private let disabledColorStorage: UIColor?
    private let selectedColorStorage: UIColor?
    private let highlightedColorStorage: UIColor?
    private let focusedColorStorage: UIColor?

    init(normal: ColorStyle, disabled: ColorStyle? = nil, selected: ColorStyle? = nil, highlighted: ColorStyle? = nil, focused: ColorStyle? = nil) {
        normalColorStorage = normal.color()
        disabledColorStorage = disabled?.color()
        selectedColorStorage = selected?.color()
        highlightedColorStorage = highlighted?.color()
        focusedColorStorage = focused?.color()
    }

    func color() -> UIColor {
        return normalColorStorage
    }

    func disabledColor() -> UIColor? {
        return disabledColorStorage
    }

    func selectedColor() -> UIColor? {
        return selectedColorStorage
    }

    func highlightedColor() -> UIColor? {
        return highlightedColorStorage
    }

    func focusedColor() -> UIColor? {
        return focusedColorStorage
    }

}
