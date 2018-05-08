//
//  ColorStyle.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that can represent a color.
/// - SeeAlso: `ColorStyleGroup`, `ColorGroup`
public protocol ColorStyle {
    /// Returns an `UIColor` that will be used in normal state.
    /// - Returns: An `UIColor` that will be used in normal state.
    func normal() -> UIColor
}

/// A protocol that describes an item that can represent a color in different states (e.g. disabled).
/// - SeeAlso: `ColorStyle`, `ColorGroup`
public protocol ColorStyleGroup: ColorStyle {
    /// Returns an `UIColor` that will be used in disabled state.
    /// - Returns: An `UIColor` that will be used in disabled state, or `nil` if no color is set.
    func disabled() -> UIColor?

    /// Returns an `UIColor` that will be used in selected state.
    /// - Returns: An `UIColor` that will be used in selected state, or `nil` if no color is set.
    func selected() -> UIColor?

    /// Returns an `UIColor` that will be used in highlighted state.
    /// - Returns: An `UIColor` that will be used in highlighted state, or `nil` if no color is set.
    func highlighted() -> UIColor?

    /// Returns an `UIColor` that will be used in focused state.
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
    public func normal() -> UIColor {
        return self
    }
}

/// A collection of `ColorStyle` that can represent a color in different states (e.g. disabled).
/// - SeeAlso: `ColorStyle`, `ColorStyleGroup`
public struct ColorGroup {
    /// The `ColorStyle` that will be used in normal state.
    private let normalStorage: ColorStyle

    /// The `ColorStyle` that will be used in disabled state, or `nil` if no `ColorStyle` is set.
    private let disabledStorage: ColorStyle?

    /// The `ColorStyle` that will be used in selected state, or `nil` if no `ColorStyle` is set.
    private let selectedStorage: ColorStyle?

    /// The `ColorStyle` that will be used in highlighted state, or `nil` if no `ColorStyle` is set.
    private let highlightedStorage: ColorStyle?

    /// The `ColorStyle` that will be used in focused state, or `nil` if no `ColorStyle` is set.
    private let focusedStorage: ColorStyle?

    /// Creates an instance with objects that conforms to `ColorStyle`.
    /// - Parameter normal: A `ColorStyle` that will be used in normal state.
    /// - Parameter disabled: A `ColorStyle` that will be used in disabled state.
    /// - Parameter selected: A `ColorStyle` that will be used in selected state.
    /// - Parameter highlighted: A `ColorStyle` that will be used in highlighted state.
    /// - Parameter focused: A `ColorStyle` that will be used in focused state.
    public init(normal: ColorStyle, disabled: ColorStyle? = nil, selected: ColorStyle? = nil, highlighted: ColorStyle? = nil, focused: ColorStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
}

extension ColorGroup: ColorStyleGroup {
    public func normal() -> UIColor {
        return normalStorage.normal()
    }

    public func disabled() -> UIColor? {
        return disabledStorage?.normal()
    }

    public func selected() -> UIColor? {
        return selectedStorage?.normal()
    }

    public func highlighted() -> UIColor? {
        return highlightedStorage?.normal()
    }

    public func focused() -> UIColor? {
        return focusedStorage?.normal()
    }
}

/// A protocol that describes a view that its colors can be represented by `ColorStyle`.
public protocol ColorStyleRepresentable {
    /// Returns an `UIColor` that will be used in current state.
    /// - Parameter style: A `ColorStyle` that represents the color.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: An `UIColor` that will be used in current state, or normal color if no color is set.
    func selectedColor(from style: ColorStyle, usingNormalFor states: [UIControlState]) -> UIColor

    /// Customizes a color through a setter method.
    /// - Parameter style: A `ColorStyle` that represents a color.
    /// - Parameter setter: A setter method that will customize a color in different states.
    /// - Parameter color: An `UIColor` that will be used.
    /// - Parameter state: An `UIControlState` that will use the color.
    func customizeColor(using style: ColorStyle, through setter: (_ color: UIColor?, _ state: UIControlState) -> Void)
}

public extension ColorStyleRepresentable {
    func selectedColor(from style: ColorStyle, usingNormalFor states: [UIControlState] = []) -> UIColor {
        guard let styleGroup = style as? ColorStyleGroup else {
            return style.normal()
        }
        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return styleGroup.highlighted() ?? styleGroup.normal()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return styleGroup.selected() ?? styleGroup.normal()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return styleGroup.disabled() ?? styleGroup.normal()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return styleGroup.focused() ?? styleGroup.normal()
        } else {
            return styleGroup.normal()
        }
    }

    func customizeColor(using style: ColorStyle, through setter: (_ color: UIColor?, _ state: UIControlState) -> Void) {
        setter(style.normal(), .normal)
        if let styleGroup = style as? ColorStyleGroup {
            setter(styleGroup.highlighted(), .highlighted)
            setter(styleGroup.disabled(), .disabled)
            setter(styleGroup.selected(), .selected)
            setter(styleGroup.focused(), .focused)
        }
    }
}
