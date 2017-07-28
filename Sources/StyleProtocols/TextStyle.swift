//
//  TextStyle.swift
//  Overlay
//
//  Created by Justin Jia on 8/28/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that can represent a text.
/// - SeeAlso: `TextStyleGroup`, `TextGroup`
public protocol TextStyle {

    /// Returns a `String` that will be used in normal state.
    /// - Returns: A `String` that will be used in normal state.
    func normal() -> String

}

/// A protocol that describes an item that can represent a text in different states (e.g. disabled).
/// - SeeAlso: `TextStyle`, `TextGroup`
public protocol TextStyleGroup: TextStyle {

    /// Returns a `String` that will be used in disabled state.
    /// - Returns: A `String` that will be used in disabled state, or `nil` if no text is set.
    func disabled() -> String?

    /// Returns a `String` that will be used in selected state.
    /// - Returns: A `String` that will be used in selected state, or `nil` if no text is set.
    func selected() -> String?

    /// Returns a `String` that will be used in highlighted state.
    /// - Returns: A `String` that will be used in highlighted state, or `nil` if no text is set.
    func highlighted() -> String?

    /// Returns a `String` that will be used in focused state.
    /// - Returns: A `String` that will be used in focused state, or `nil` if no text is set.
    func focused() -> String?

}

public extension TextStyleGroup {

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func disabled() -> String? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func selected() -> String? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func highlighted() -> String? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func focused() -> String? {
        return nil
    }

}

extension String: TextStyle {

    public func normal() -> String {
        return self
    }

}

/// A collection of `TextStyle` that can represent a text in different states (e.g. disabled).
/// - SeeAlso: `TextStyle`, `TextStyleGroup`
public struct TextGroup {

    /// The `TextStyle` that will be used in normal state.
    private let normalStorage: TextStyle

    /// The `TextStyle` that will be used in disabled state, or `nil` if no `TextStyle` is set.
    private let disabledStorage: TextStyle?

    /// The `TextStyle` that will be used in selected state, or `nil` if no `TextStyle` is set.
    private let selectedStorage: TextStyle?

    /// The `TextStyle` that will be used in highlighted state, or `nil` if no `TextStyle` is set.
    private let highlightedStorage: TextStyle?

    /// The `TextStyle` that will be used in focused state, or `nil` if no `TextStyle` is set.
    private let focusedStorage: TextStyle?

    /// Creates an instance with objects that conforms to `TextStyle`.
    /// - Parameter normal: A `TextStyle` that will be used in normal state.
    /// - Parameter disabled: A `TextStyle` that will be used in disabled state.
    /// - Parameter selected: A `TextStyle` that will be used in selected state.
    /// - Parameter highlighted: A `TextStyle` that will be used in highlighted state.
    /// - Parameter focused: A `TextStyle` that will be used in focused state.
    public init(normal: TextStyle, disabled: TextStyle? = nil, selected: TextStyle? = nil, highlighted: TextStyle? = nil, focused: TextStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }

}

extension TextGroup: TextStyleGroup {

    public func normal() -> String {
        return normalStorage.normal()
    }

    public func disabled() -> String? {
        return disabledStorage?.normal()
    }

    public func selected() -> String? {
        return selectedStorage?.normal()
    }

    public func highlighted() -> String? {
        return highlightedStorage?.normal()
    }

    public func focused() -> String? {
        return focusedStorage?.normal()
    }

}

/// A protocol that describes a view that its texts can be represented by `TextStyle`.
public protocol TextStyleRepresentable { }

extension TextStyleRepresentable {

    /// Returns a `String` that will be used in current state.
    /// - Parameter style: A `TextStyle` that represents the text.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: A `String` that will be used in current state, or `nil` if no text is set.
    func selectedText(from style: TextStyle, usingNormalFor states: [UIControlState] = []) -> String? {
        guard let styleGroup = style as? TextStyleGroup else {
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

    /// Customizes a text through a setter method.
    /// - Parameter style: A `TextStyle` that represents a text.
    /// - Parameter setter: A setter method that will customize a text in different states.
    /// - Parameter text: A `String` that will be used.
    /// - Parameter state: An `UIControlState` that will use the text.
    func customizeText(using style: TextStyle, through setter: (_ text: String?, _ state: UIControlState) -> Void) {
        setter(style.normal(), .normal)
        if let styleGroup = style as? TextStyleGroup {
            setter(styleGroup.highlighted(), .highlighted)
            setter(styleGroup.disabled(), .disabled)
            setter(styleGroup.selected(), .selected)
            setter(styleGroup.focused(), .focused)
        }
    }

}
