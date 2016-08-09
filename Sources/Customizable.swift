//
//  Customizable.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

// Workaround: default argument in protocol methods is not supported yet

public protocol ViewCustomizable {

    func refresh()

}

public extension ViewCustomizable {

    func selected(_ style: ColorStyle) -> UIColor? {
        return selected(style, except: [])
    }

    func selected(_ style: FontStyle) -> UIFont? {
        return selected(style, except: [])
    }

    func selected(_ style: ColorStyle, except states: [UIControlState]) -> UIColor? {
        guard let styleGroup = style as? ColorStyleGroup else {
            return style.normal()
        }

        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return styleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return styleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return styleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return styleGroup.focused()
        } else {
            return styleGroup.normal()
        }
    }

    func selected(_ style: FontStyle, except states: [UIControlState]) -> UIFont? {
        guard let styleGroup = style as? FontStyleGroup else {
            return style.normal()
        }

        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return styleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return styleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return styleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return styleGroup.focused()
        } else {
            return styleGroup.normal()
        }
    }

}

public protocol ViewFocusable {

    var isFocused: Bool { get }

}

public protocol ViewDisable {

    var isEnabled: Bool { get }

}

public protocol ViewSelectable {

    var isSelected: Bool { get }

}

public protocol ViewHighlightable {

    var isHighlighted: Bool { get }

}

extension UIView: ViewFocusable { }

extension UIControl: ViewDisable, ViewSelectable, ViewHighlightable { }

extension UITableViewCell: ViewSelectable, ViewHighlightable { }

extension UILabel: ViewDisable, ViewHighlightable { }

extension UIImageView: ViewHighlightable { }
