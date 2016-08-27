//
//  ColorStyle.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a color property of a view that conforms to `Custom*Color`.
/// - SeeAlso: `ColorStyleGroup`, `ColorGroup`
public protocol ColorStyle {

    /// Returns a color that will be used in normal state.
    /// - Returns: An `UIColor` that will be used in normal state.
    func normal() -> UIColor

}

/// A protocol that describes a color property of a view in different states (e.g. disabled) that conforms to `Custom*Color`.
/// - SeeAlso: `ColorStyle`, `ColorGroup`
public protocol ColorStyleGroup: ColorStyle {

    /// Returns a color that will be used in disabled state.
    /// - Returns: An `UIColor` that will be used in disabled state, or `nil` if no color is set.
    func disabled() -> UIColor?

    /// Returns a color that will be used in selected state.
    /// - Returns: An `UIColor` that will be used in selected state, or `nil` if no color is set.
    func selected() -> UIColor?

    /// Returns a color that will be used in highlighted state.
    /// - Returns: An `UIColor` that will be used in highlighted state, or `nil` if no color is set.
    func highlighted() -> UIColor?

    /// Returns a color that will be used in focused state.
    /// - Returns: An `UIColor` that will be used in focused state, or `nil` if no color is set.
    func focused() -> UIColor?

}

public extension ColorStyleGroup {

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func disabled() -> UIColor? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func selected() -> UIColor? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func highlighted() -> UIColor? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func focused() -> UIColor? {
        return nil
    }

}

extension UIColor: ColorStyle {

    /// Returns a color that will be used in normal state.
    /// - Returns: An `UIColor` that will be used in normal state.
    public func normal() -> UIColor {
        return self
    }

}

/// A collection of colors that describes a color property of a view in different states (e.g. disabled) that conforms to `Custom*Color`.
/// - SeeAlso: `ColorStyle`, `ColorStyleGroup`
public struct ColorGroup {

    /// The color that will be used in normal state.
    fileprivate let normalStorage: ColorStyle

    /// The color that will be used in disabled state, or `nil` if no color is set.
    fileprivate let disabledStorage: ColorStyle?

    /// The color that will be used in selected state, or `nil` if no color is set.
    fileprivate let selectedStorage: ColorStyle?

    /// The color that will be used in highlighted state, or `nil` if no color is set.
    fileprivate let highlightedStorage: ColorStyle?

    /// The color that will be used in focused state, or `nil` if no color is set.
    fileprivate let focusedStorage: ColorStyle?

    /// Creates an instance with objects that conforms to `ColorStyle`.
    /// - Parameter normal: An `UIColor` that will be used in normal state.
    /// - Parameter disabled: An `UIColor` that will be used in disabled state.
    /// - Parameter selected: An `UIColor` that will be used in selected state.
    /// - Parameter highlighted: An `UIColor` that will be used in highlighted state.
    /// - Parameter focused: An `UIColor` that will be used in focused state.
    public init(normal: ColorStyle, disabled: ColorStyle? = nil, selected: ColorStyle? = nil, highlighted: ColorStyle? = nil, focused: ColorStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }

}

extension ColorGroup: ColorStyleGroup {

    /// Returns a color that will be used in normal state.
    /// - Returns: An `UIColor` that will be used in normal state.
    public func normal() -> UIColor {
        return normalStorage.normal()
    }

    /// Returns a color that will be used in disabled state.
    /// - Returns: An `UIColor` that will be used in disabled state, or `nil` if no color is set.
    public func disabled() -> UIColor? {
        return disabledStorage?.normal()
    }

    /// Returns a color that will be used in selected state.
    /// - Returns: An `UIColor` that will be used in selected state, or `nil` if no color is set.
    public func selected() -> UIColor? {
        return selectedStorage?.normal()
    }

    /// Returns a color that will be used in highlighted state.
    /// - Returns: An `UIColor` that will be used in highlighted state, or `nil` if no color is set.
    public func highlighted() -> UIColor? {
        return highlightedStorage?.normal()
    }

    /// Returns a color that will be used in focused state.
    /// - Returns: An `UIColor` that will be used in focused state, or `nil` if no color is set.
    public func focused() -> UIColor? {
        return focusedStorage?.normal()
    }

}

/// A protocol that describes a view that its color can be expressed by `ColorStyle`.
public protocol ColorStyleExpressible { }

extension ColorStyleExpressible {

    /// Returns a color that will be used in current state.
    /// - Parameter style: A `ColorStyle` that describes the color.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: An `UIColor` that will be used in current state, or `nil` if no color is set.
    func selectedColor(from style: ColorStyle, usingNormalFor states: [UIControlState] = []) -> UIColor? {
        guard let styleGroup = style as? ColorStyleGroup else {
            return style.normal()
        }

        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return styleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return styleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return styleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return styleGroup.focused()
        } else {
            return styleGroup.normal()
        }
    }

    /// Customizes a color through a setter method.
    /// - Parameter style: A `ColorStyle` that describes a color.
    /// - Parameter setter: A setter method that will customize a color in different states.
    /// - Parameter color: An `UIColor` that will be used.
    /// - Parameter state: An `UIControlState` that will use the color.
    func customizeColor(using style: ColorStyle, through setter: (_ color: UIColor?, _ state: UIControlState) -> ()) {
        setter(style.normal(), .normal)
        if let styleGroup = style as? ColorStyleGroup {
            setter(styleGroup.highlighted(), .highlighted)
            setter(styleGroup.disabled(), .disabled)
            setter(styleGroup.selected(), .selected)
            setter(styleGroup.focused(), .focused)
        }
    }

}
