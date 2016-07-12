//
//  ColorStyle.swift
//  Look
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol ColorStyle {

    func normal() -> UIColor

}

public protocol ColorStyleGroup: ColorStyle {

    func disabled() -> UIColor?
    func selected() -> UIColor?
    func highlighted() -> UIColor?
    func focused() -> UIColor?

}

public extension ColorStyleGroup {

    public func disabled() -> UIColor? {
        return nil
    }

    public func selected() -> UIColor? {
        return nil
    }

    public func highlighted() -> UIColor? {
        return nil
    }

    public func focused() -> UIColor? {
        return nil
    }
    
}

extension UIColor: ColorStyle {

    public func normal() -> UIColor {
        return self
    }

}

public struct ColorGroup: ColorStyleGroup {

    private let normalStorage: UIColor
    private let disabledStorage: UIColor?
    private let selectedStorage: UIColor?
    private let highlightedStorage: UIColor?
    private let focusedStorage: UIColor?
    
    public init(normal: UIColor, disabled: UIColor? = nil, selected: UIColor? = nil, highlighted: UIColor? = nil, focused: UIColor? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }

    public init(normal: ColorStyle, disabled: ColorStyle? = nil, selected: ColorStyle? = nil, highlighted: ColorStyle? = nil, focused: ColorStyle? = nil) {
        self.init(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
    }

    public func normal() -> UIColor {
        return normalStorage
    }

    public func disabled() -> UIColor? {
        return disabledStorage
    }

    public func selected() -> UIColor? {
        return selectedStorage
    }

    public func highlighted() -> UIColor? {
        return highlightedStorage
    }

    public func focused() -> UIColor? {
        return focusedStorage
    }
    
}
