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

    func disabled() -> UIColor? {
        return nil
    }

    func selected() -> UIColor? {
        return nil
    }

    func highlighted() -> UIColor? {
        return nil
    }

    func focused() -> UIColor? {
        return nil
    }

}

extension UIColor: ColorStyle {

    public func normal() -> UIColor {
        return self
    }

}

/// A collection of colors that describes a color property of a view in different states (e.g. disabled) that conforms to `Custom*Color`.
/// - SeeAlso: `ColorStyle`, `ColorGroupStyle`
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
