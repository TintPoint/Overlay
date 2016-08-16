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

    private let normalStorage: UIFont
    private let disabledStorage: UIFont?
    private let selectedStorage: UIFont?
    private let highlightedStorage: UIFont?
    private let focusedStorage: UIFont?

    public init(normal: UIFont, disabled: UIFont? = nil, selected: UIFont? = nil, highlighted: UIFont? = nil, focused: UIFont? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }

    public init(normal: FontStyle, disabled: FontStyle? = nil, selected: FontStyle? = nil, highlighted: FontStyle? = nil, focused: FontStyle? = nil) {
        self.init(normal: normal.normal(), disabled: disabled?.normal(), selected: selected?.normal(), highlighted: highlighted?.normal(), focused: focused?.normal())
    }

    public func normal() -> UIFont {
        return normalStorage
    }

    public func disabled() -> UIFont? {
        return disabledStorage
    }

    public func selected() -> UIFont? {
        return selectedStorage
    }

    public func highlighted() -> UIFont? {
        return highlightedStorage
    }

    public func focused() -> UIFont? {
        return focusedStorage
    }

}
