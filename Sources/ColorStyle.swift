//
//  ColorStyle.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

// Workaround: generic protocol is not supported yet

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

public struct ColorGroup: ColorStyleGroup {

    private let normalStorage: ColorStyle
    private let disabledStorage: ColorStyle?
    private let selectedStorage: ColorStyle?
    private let highlightedStorage: ColorStyle?
    private let focusedStorage: ColorStyle?

    public init(normal: ColorStyle, disabled: ColorStyle? = nil, selected: ColorStyle? = nil, highlighted: ColorStyle? = nil, focused: ColorStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }

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
