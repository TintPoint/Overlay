//
//  ImageStyle.swift
//  Overlay
//
//  Created by Justin Jia on 8/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an image property of a view that conforms to `Custom*Image`.
/// - SeeAlso: `ImageStyleGroup`, `ImageGroup`
public protocol ImageStyle {
    
    /// Returns an image that will be used in normal state.
    /// - Returns: An `UIImage` that will be used in normal state.
    func normal() -> UIImage
    
}

/// A protocol that describes an image property of a view in different states (e.g. disabled) that conforms to `Custom*Image`.
/// - SeeAlso: `ImageStyle`, `ImageGroup`
public protocol ImageStyleGroup: ImageStyle {
    
    /// Returns an image that will be used in disabled state.
    /// - Returns: An `UIImage` that will be used in disabled state, or `nil` if no image is set.
    func disabled() -> UIImage?
    
    /// Returns an image that will be used in selected state.
    /// - Returns: An `UIImage` that will be used in selected state, or `nil` if no image is set.
    func selected() -> UIImage?
    
    /// Returns an image that will be used in highlighted state.
    /// - Returns: An `UIImage` that will be used in highlighted state, or `nil` if no image is set.
    func highlighted() -> UIImage?
    
    /// Returns an image that will be used in focused state.
    /// - Returns: An `UIImage` that will be used in focused state, or `nil` if no image is set.
    func focused() -> UIImage?
    
}

public extension ImageStyleGroup {
    
    func disabled() -> UIImage? {
        return nil
    }
    
    func selected() -> UIImage? {
        return nil
    }
    
    func highlighted() -> UIImage? {
        return nil
    }
    
    func focused() -> UIImage? {
        return nil
    }
    
}

extension UIImage: ImageStyle {
    
    public func normal() -> UIImage {
        return self
    }
    
}

/// A collection of images that describes an image property of a view in different states (e.g. disabled) that conforms to `Custom*Image`.
/// - SeeAlso: `ImageStyle`, `ImageGroupStyle`
public struct ImageGroup {
    
    /// The image that will be used in normal state.
    fileprivate let normalStorage: ImageStyle
    
    /// The image that will be used in disabled state, or `nil` if no image is set.
    fileprivate let disabledStorage: ImageStyle?
    
    /// The image that will be used in selected state, or `nil` if no image is set.
    fileprivate let selectedStorage: ImageStyle?
    
    /// The image that will be used in highlighted state, or `nil` if no image is set.
    fileprivate let highlightedStorage: ImageStyle?
    
    /// The image that will be used in focused state, or `nil` if no image is set.
    fileprivate let focusedStorage: ImageStyle?
    
    /// Creates an instance with objects that conforms to `ImageStyle`.
    /// - Parameter normal: An `UIImage` that will be used in normal state.
    /// - Parameter disabled: An `UIImage` that will be used in disabled state.
    /// - Parameter selected: An `UIImage` that will be used in selected state.
    /// - Parameter highlighted: An `UIImage` that will be used in highlighted state.
    /// - Parameter focused: An `UIImage` that will be used in focused state.
    public init(normal: ImageStyle, disabled: ImageStyle? = nil, selected: ImageStyle? = nil, highlighted: ImageStyle? = nil, focused: ImageStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
    
}

extension ImageGroup: ImageStyleGroup {
    
    public func normal() -> UIImage {
        return normalStorage.normal()
    }
    
    public func disabled() -> UIImage? {
        return disabledStorage?.normal()
    }
    
    public func selected() -> UIImage? {
        return selectedStorage?.normal()
    }
    
    public func highlighted() -> UIImage? {
        return highlightedStorage?.normal()
    }
    
    public func focused() -> UIImage? {
        return focusedStorage?.normal()
    }
    
}
