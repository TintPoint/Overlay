//
//  ImageStyle.swift
//  Overlay
//
//  Created by Justin Jia on 8/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

// Workaround: generic protocol is not supported yet

public protocol ImageStyle {
    
    func normal() -> UIImage
    
}

public protocol ImageStyleGroup: ImageStyle {
    
    func disabled() -> UIImage?
    func selected() -> UIImage?
    func highlighted() -> UIImage?
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

public struct ImageGroup: ImageStyleGroup {
    
    private let normalStorage: ImageStyle
    private let disabledStorage: ImageStyle?
    private let selectedStorage: ImageStyle?
    private let highlightedStorage: ImageStyle?
    private let focusedStorage: ImageStyle?

    public init(normal: ImageStyle, disabled: ImageStyle? = nil, selected: ImageStyle? = nil, highlighted: ImageStyle? = nil, focused: ImageStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
    
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
