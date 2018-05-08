//
//  TextAlignmentStyle.swift
//  Overlay
//
//  Created by Justin Jia on 1/10/17.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that can represent the alignment of a text.
/// - SeeAlso: `TextAlignmentStyleGroup`, `TextAlignmentGroup`
public protocol TextAlignmentStyle {
    /// Returns a `NSTextAlignment` that will be used in normal state.
    /// - Returns: A `NSTextAlignment` that will be used in normal state.
    func normal() -> NSTextAlignment
}

/// A protocol that describes an item that can represent the alignment of a text in different states (e.g. disabled).
/// - SeeAlso: `TextAlignmentStyle`, `TextAlignmentGroup`
public protocol TextAlignmentStyleGroup: TextAlignmentStyle {
    /// Returns a `NSTextAlignment` that will be used in disabled state.
    /// - Returns: A `NSTextAlignment` that will be used in disabled state, or `nil` if no text is set.
    func disabled() -> NSTextAlignment?

    /// Returns a `NSTextAlignment` that will be used in selected state.
    /// - Returns: A `NSTextAlignment` that will be used in selected state, or `nil` if no text is set.
    func selected() -> NSTextAlignment?

    /// Returns a `NSTextAlignment` that will be used in highlighted state.
    /// - Returns: A `NSTextAlignment` that will be used in highlighted state, or `nil` if no text is set.
    func highlighted() -> NSTextAlignment?

    /// Returns a `NSTextAlignment` that will be used in focused state.
    /// - Returns: A `NSTextAlignment` that will be used in focused state, or `nil` if no text is set.
    func focused() -> NSTextAlignment?
}

public extension TextAlignmentStyleGroup {
    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func disabled() -> NSTextAlignment? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func selected() -> NSTextAlignment? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func highlighted() -> NSTextAlignment? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func focused() -> NSTextAlignment? {
        return nil
    }
}

extension NSTextAlignment: TextAlignmentStyle {
    public func normal() -> NSTextAlignment {
        return self
    }
}

/// A collection of `TextAlignmentStyle` that can represent the alignment of a text in different states (e.g. disabled).
/// - SeeAlso: `TextAlignmentStyle`, `TextAlignmentStyleGroup`
public struct TextAlignmentGroup {
    /// The `TextAlignmentStyle` that will be used in normal state.
    private let normalStorage: TextAlignmentStyle

    /// The `TextAlignmentStyle` that will be used in disabled state, or `nil` if no `TextAlignmentStyle` is set.
    private let disabledStorage: TextAlignmentStyle?

    /// The `TextAlignmentStyle` that will be used in selected state, or `nil` if no `TextAlignmentStyle` is set.
    private let selectedStorage: TextAlignmentStyle?

    /// The `TextAlignmentStyle` that will be used in highlighted state, or `nil` if no `TextAlignmentStyle` is set.
    private let highlightedStorage: TextAlignmentStyle?

    /// The `TextAlignmentStyle` that will be used in focused state, or `nil` if no `TextAlignmentStyle` is set.
    private let focusedStorage: TextAlignmentStyle?

    /// Creates an instance with objects that conforms to `TextAlignmentStyle`.
    /// - Parameter normal: A `TextAlignmentStyle` that will be used in normal state.
    /// - Parameter disabled: A `TextAlignmentStyle` that will be used in disabled state.
    /// - Parameter selected: A `TextAlignmentStyle` that will be used in selected state.
    /// - Parameter highlighted: A `TextAlignmentStyle` that will be used in highlighted state.
    /// - Parameter focused: A `TextAlignmentStyle` that will be used in focused state.
    public init(normal: TextAlignmentStyle, disabled: TextAlignmentStyle? = nil, selected: TextAlignmentStyle? = nil, highlighted: TextAlignmentStyle? = nil, focused: TextAlignmentStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
}

extension TextAlignmentGroup: TextAlignmentStyleGroup {
    public func normal() -> NSTextAlignment {
        return normalStorage.normal()
    }

    public func disabled() -> NSTextAlignment? {
        return disabledStorage?.normal()
    }

    public func selected() -> NSTextAlignment? {
        return selectedStorage?.normal()
    }

    public func highlighted() -> NSTextAlignment? {
        return highlightedStorage?.normal()
    }

    public func focused() -> NSTextAlignment? {
        return focusedStorage?.normal()
    }
}

/// A protocol that describes a view that its alignments of texts can be represented by `TextAlignmentStyle`.
public protocol TextAlignmentStyleRepresentable {
    /// Returns a `NSTextAlignment` that will be used in current state.
    /// - Parameter style: A `TextAlignmentStyle` that represents the alignment.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: A `NSTextAlignment` that will be used in current state, or normal alignment if no alignment is set.
    func selectedTextAlignment(from style: TextAlignmentStyle, usingNormalFor states: [UIControlState]) -> NSTextAlignment
}

public extension TextAlignmentStyleRepresentable {
    func selectedTextAlignment(from style: TextAlignmentStyle, usingNormalFor states: [UIControlState] = []) -> NSTextAlignment {
        guard let styleGroup = style as? TextAlignmentStyleGroup else {
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
}
