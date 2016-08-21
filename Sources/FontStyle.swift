//
//  FontStyle.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

// Workaround: generic protocol is not supported yet

/// A protocol that describes a font property of a view that conforms to `Custom*Font`.
/// - SeeAlso: `FontStyleGroup`, `FontGroup`
public protocol FontStyle {
    
    /// Returns a font that will be used in normal state.
    /// - Returns: An `UIFont` that will be used in normal state.
    func normal() -> UIFont
    
}

/// A protocol that describes a font property of a view in different states (e.g. disabled) that conforms to `Custom*Font`.
/// - SeeAlso: `FontStyle`, `FontGroup`
public protocol FontStyleGroup: FontStyle {
    
    /// Returns a font that will be used in disabled state.
    /// - Returns: An `UIFont` that will be used in disabled state, or `nil` if no font is set.
    func disabled() -> UIFont?
    
    /// Returns a font that will be used in selected state.
    /// - Returns: An `UIFont` that will be used in selected state, or `nil` if no font is set.
    func selected() -> UIFont?
    
    /// Returns a font that will be used in highlighted state.
    /// - Returns: An `UIFont` that will be used in highlighted state, or `nil` if no font is set.
    func highlighted() -> UIFont?
    
    /// Returns a font that will be used in focused state.
    /// - Returns: An `UIFont` that will be used in focused state, or `nil` if no font is set.
    func focused() -> UIFont?
    
}

public extension FontStyleGroup {
    
    func disabled() -> UIFont? {
        return nil
    }
    
    func selected() -> UIFont? {
        return nil
    }
    
    func highlighted() -> UIFont? {
        return nil
    }
    
    func focused() -> UIFont? {
        return nil
    }
    
}

extension UIFont: FontStyle {
    
    public func normal() -> UIFont {
        return self
    }
    
}

/// A collection of fonts that describes a font property of a view in different states (e.g. disabled) that conforms to `Custom*Font`.
/// - SeeAlso: `FontStyle`, `FontGroupStyle`
public struct FontGroup: FontStyleGroup {
    
    /// The font that will be used in normal state.
    private let normalStorage: FontStyle
    
    /// The font that will be used in disabled state, or `nil` if no font is set.
    private let disabledStorage: FontStyle?
    
    /// The font that will be used in selected state, or `nil` if no font is set.
    private let selectedStorage: FontStyle?
    
    /// The font that will be used in highlighted state, or `nil` if no font is set.
    private let highlightedStorage: FontStyle?
    
    /// The font that will be used in focused state, or `nil` if no font is set.
    private let focusedStorage: FontStyle?
    
    /// Creates an instance with objects that conforms to `FontStyle`.
    /// - Parameter normal: font to be used in normal state.
    /// - Parameter disabled: font to be used in disabled state.
    /// - Parameter selected: font to be used in selected state.
    /// - Parameter highlighted: font to be used in highlighted state.
    /// - Parameter focused: font to be used in focused state.
    public init(normal: FontStyle, disabled: FontStyle? = nil, selected: FontStyle? = nil, highlighted: FontStyle? = nil, focused: FontStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
    
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
