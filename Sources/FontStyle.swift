//
//  FontStyle.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

// Workaround: generic protocol is not supported yet

public protocol FontStyle {

    func normal() -> UIFont

}

public protocol FontStyleGroup: FontStyle {

    func disabled() -> UIFont?
    func selected() -> UIFont?
    func highlighted() -> UIFont?
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

public struct FontGroup: FontStyleGroup {

    private let normalStorage: FontStyle
    private let disabledStorage: FontStyle?
    private let selectedStorage: FontStyle?
    private let highlightedStorage: FontStyle?
    private let focusedStorage: FontStyle?

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
