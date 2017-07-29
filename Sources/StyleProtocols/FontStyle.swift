//
//  FontStyle.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that can represent a font.
/// - SeeAlso: `FontStyleGroup`, `FontGroup`
public protocol FontStyle {

    /// Returns an `UIFont` that will be used in normal state.
    /// - Returns: An `UIFont` that will be used in normal state.
    func normal() -> UIFont

}

/// A protocol that describes an item that can represent a font in different states (e.g. disabled).
/// - SeeAlso: `FontStyle`, `FontGroup`
public protocol FontStyleGroup: FontStyle {

    /// Returns an `UIFont` that will be used in disabled state.
    /// - Returns: An `UIFont` that will be used in disabled state, or `nil` if no font is set.
    func disabled() -> UIFont?

    /// Returns an `UIFont` that will be used in selected state.
    /// - Returns: An `UIFont` that will be used in selected state, or `nil` if no font is set.
    func selected() -> UIFont?

    /// Returns an `UIFont` that will be used in highlighted state.
    /// - Returns: An `UIFont` that will be used in highlighted state, or `nil` if no font is set.
    func highlighted() -> UIFont?

    /// Returns an `UIFont` that will be used in focused state.
    /// - Returns: An `UIFont` that will be used in focused state, or `nil` if no font is set.
    func focused() -> UIFont?

}

public extension FontStyleGroup {

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func disabled() -> UIFont? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func selected() -> UIFont? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func highlighted() -> UIFont? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func focused() -> UIFont? {
        return nil
    }

}

extension UIFont: FontStyle {

    public func normal() -> UIFont {
        return self
    }

}

/// A collection of `FontStyle` that can represent a font in different states (e.g. disabled).
/// - SeeAlso: `FontStyle`, `FontStyleGroup`
public struct FontGroup {

    /// The `FontStyle` that will be used in normal state.
    private let normalStorage: FontStyle

    /// The `FontStyle` that will be used in disabled state, or `nil` if no `FontStyle` is set.
    private let disabledStorage: FontStyle?

    /// The `FontStyle` that will be used in selected state, or `nil` if no `FontStyle` is set.
    private let selectedStorage: FontStyle?

    /// The `FontStyle` that will be used in highlighted state, or `nil` if no `FontStyle` is set.
    private let highlightedStorage: FontStyle?

    /// The `FontStyle` that will be used in focused state, or `nil` if no `FontStyle` is set.
    private let focusedStorage: FontStyle?

    /// Creates an instance with objects that conforms to `FontStyle`.
    /// - Parameter normal: A `FontStyle` that will be used in normal state.
    /// - Parameter disabled: A `FontStyle` that will be used in disabled state.
    /// - Parameter selected: A `FontStyle` that will be used in selected state.
    /// - Parameter highlighted: A `FontStyle` that will be used in highlighted state.
    /// - Parameter focused: A `FontStyle` that will be used in focused state.
    public init(normal: FontStyle, disabled: FontStyle? = nil, selected: FontStyle? = nil, highlighted: FontStyle? = nil, focused: FontStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }

}

extension FontGroup: FontStyleGroup {

    public func normal() -> UIFont {
        return normalStorage.normal()
    }

    public func disabled() -> UIFont? {
        return disabledStorage?.normal()
    }

    public func selected() -> UIFont? {
        return selectedStorage?.normal()
    }

    public func highlighted() -> UIFont? {
        return highlightedStorage?.normal()
    }

    public func focused() -> UIFont? {
        return focusedStorage?.normal()
    }

}

/// A protocol that describes a view that its fonts can be represented by `FontStyle`.
public protocol FontStyleRepresentable {

    /// Returns an `UIFont` that will be used in current state.
    /// - Parameter style: A `FontStyle` that represents the font.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: An `UIFont` that will be used in current state, or `nil` if no font is set.
    func selectedFont(from style: FontStyle, usingNormalFor states: [UIControlState]) -> UIFont?

}

public extension FontStyleRepresentable {

    func selectedFont(from style: FontStyle, usingNormalFor states: [UIControlState] = []) -> UIFont? {
        guard let styleGroup = style as? FontStyleGroup else {
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

}
