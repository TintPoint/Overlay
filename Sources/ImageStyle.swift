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
    
    private let normalStorage: UIImage
    private let disabledStorage: UIImage?
    private let selectedStorage: UIImage?
    private let highlightedStorage: UIImage?
    private let focusedStorage: UIImage?
    
    public init(normal: UIImage, disabled: UIImage? = nil, selected: UIImage? = nil, highlighted: UIImage? = nil, focused: UIImage? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
    
    public init(normal: ImageStyle, disabled: ImageStyle? = nil, selected: ImageStyle? = nil, highlighted: ImageStyle? = nil, focused: ImageStyle? = nil) {
        self.init(normal: normal.normal(), disabled: disabled?.normal(), selected: selected?.normal(), highlighted: highlighted?.normal(), focused: focused?.normal())
    }
    
    public func normal() -> UIImage {
        return normalStorage
    }
    
    public func disabled() -> UIImage? {
        return disabledStorage
    }
    
    public func selected() -> UIImage? {
        return selectedStorage
    }
    
    public func highlighted() -> UIImage? {
        return highlightedStorage
    }
    
    public func focused() -> UIImage? {
        return focusedStorage
    }
    
}
