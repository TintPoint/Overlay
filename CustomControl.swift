//
//  CustomControl.swift
//  Look
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

extension UIButton {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomButtonTitleColor {
            setTitleColor(style.titleColorStyle.normal(), for: [])
            if let colorStyleGroup = style.titleColorStyle as? ColorStyleGroup {
                setTitleColor(colorStyleGroup.highlighted(), for: .highlighted)
                setTitleColor(colorStyleGroup.disabled(), for: .disabled)
                setTitleColor(colorStyleGroup.selected(), for: .selected)
            }
        }

        if let style = self as? CustomButtonTitleShadowColor {
            setTitleShadowColor(style.titleShadowColorStyle.normal(), for: [])
            if let colorStyleGroup = style.titleShadowColorStyle as? ColorStyleGroup {
                setTitleShadowColor(colorStyleGroup.highlighted(), for: .highlighted)
                setTitleShadowColor(colorStyleGroup.disabled(), for: .disabled)
                setTitleShadowColor(colorStyleGroup.selected(), for: .selected)
            }
        }
    }

}

extension UISwitch {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomSwitchOnTintColor {
            onTintColor = style.selected(style.onTintColorStyle)
        }

        if let style = self as? CustomSwitchThumbTintColor {
            thumbTintColor = style.selected(style.thumbTintColorStyle)
        }
    }

}

extension UITextField {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomFont {
            font = style.selected(style.fontStyle)
        }

        if let style = self as? CustomTextColor {
            textColor = style.selected(style.textColorStyle)
        }
    }

}
