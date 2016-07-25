//
//  CustomView.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

@IBDesignable
public extension UIView {

    public override func awakeFromNib() {
        super.awakeFromNib()
        refresh()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        refresh()
    }

}

extension UIView {

    func refresh() {
        if let style = self as? CustomTintColor {
            tintColor = style.selected(style.tintColorStyle)
        }

        if let style = self as? CustomBackgroundColor {
            backgroundColor = style.selected(style.backgroundColorStyle)
        }
    }

}

extension UIActivityIndicatorView {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomActivityIndicatorViewColor {
            color = style.selected(style.colorStyle)
        }
    }

}

extension UILabel {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomFont {
            font = style.selected(style.fontStyle)
        }

        if let style = self as? CustomTextColor {
            textColor = style.selected(style.textColorStyle, except: [.highlighted])
            if let colorStyleGroup = style.textColorStyle as? ColorStyleGroup {
                highlightedTextColor = colorStyleGroup.highlighted()
            }
        }

        if let style = self as? CustomShadowColor {
            shadowColor = style.selected(style.shadowColorStyle)
        }
    }

}

extension UINavigationBar {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}

extension UIProgressView {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomProgressTintColor {
            progressTintColor = style.selected(style.progressTintColorStyle)
        }

        if let style = self as? CustomProgressTrackTintColor {
            trackTintColor = style.selected(style.trackTintColorStyle)
        }
    }

}

extension UISearchBar {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}

extension UITabBar {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }

        if let style = self as? CustomTabBarUnselectedItemTintColor {
            unselectedItemTintColor = style.selected(style.unselectedItemTintColorStyle)
        }
    }

}

extension UIToolbar {

    override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}
