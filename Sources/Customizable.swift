//
//  Customizable.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

protocol ViewCustomizable {

    // Workaround: Default argument not permitted in a protocol method
    func selected(_ colorStyle: ColorStyle) -> UIColor?
    func selected(_ fontStyle: FontStyle) -> UIFont?

    func selected(_ colorStyle: ColorStyle, except states: [UIControlState]) -> UIColor?
    func selected(_ fontStyle: FontStyle, except states: [UIControlState]) -> UIFont?

}

extension ViewCustomizable {

    func selected(_ colorStyle: ColorStyle) -> UIColor? {
        return selected(colorStyle, except: [])
    }

    func selected(_ fontStyle: FontStyle) -> UIFont? {
        return selected(fontStyle, except: [])
    }

    func selected(_ colorStyle: ColorStyle, except states: [UIControlState]) -> UIColor? {
        guard let colorStyleGroup = colorStyle as? ColorStyleGroup else {
            return colorStyle.normal()
        }

        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return colorStyleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return colorStyleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return colorStyleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return colorStyleGroup.focused()
        } else {
            return colorStyleGroup.normal()
        }
    }

    func selected(_ fontStyle: FontStyle, except states: [UIControlState]) -> UIFont? {
        guard let fontStyleGroup = fontStyle as? FontStyleGroup else {
            return fontStyle.normal()
        }

        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return fontStyleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return fontStyleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return fontStyleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return fontStyleGroup.focused()
        } else {
            return fontStyleGroup.normal()
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
