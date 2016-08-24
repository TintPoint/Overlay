//
//  ColorCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its background color can be customized.
public protocol BackgroundColorCustomizable: ViewCustomizable {

    /// Customizes the background color.
    /// - Parameter style: A `ColorStyle` that describes the background color.
    func customizeBackgroundColor(using style: ColorStyle)

}

/// A protocol that describes a view that its badge color can be customized.
public protocol BadgeColorCustomizable: ViewCustomizable {

    /// Customizes the badge color.
    /// - Parameter style: A `ColorStyle` that describes the badge color.
    func customizeBadgeColor(using style: ColorStyle)

}

/// A protocol that describes a view that its bar tint color can be customized.
public protocol BarTintColorCustomizable: ViewCustomizable {

    /// Customizes the bar tint color.
    /// - Parameter style: A `ColorStyle` that describes the bar tint color.
    func customizeBarTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its border color can be customized.
public protocol BorderColorCustomizable: ViewCustomizable {

    /// Customizes the border color.
    /// - Parameter style: A `ColorStyle` that describes the border color.
    func customizeBorderColor(using style: ColorStyle)

}

/// A protocol that describes an indicator that its color can be customized.
public protocol IndicatorColorCustomizable: ViewCustomizable {

    /// Customizes the color.
    /// - Parameter style: A `ColorStyle` that describes the color.
    func customizeIndicatorColor(using style: ColorStyle)

}

/// A protocol that describes a view that its maximum track tint color can be customized.
public protocol MaximumTrackTintColorCustomizable: ViewCustomizable {

    /// Customizes the maximum track tint color.
    /// - Parameter style: A `ColorStyle` that describes the maximum track tint color.
    func customizeMaximumTrackTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its minimum track tint color can be customized.
public protocol MinimumTrackTintColorCustomizable: ViewCustomizable {

    /// Customizes the minimum track tint color.
    /// - Parameter style: A `ColorStyle` that describes the minimum track tint color.
    func customizeMinimumTrackTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its on tint color can be customized.
public protocol OnTintColorCustomizable: ViewCustomizable {

    /// Customizes the on tint color.
    /// - Parameter style: A `ColorStyle` that describes the on tint color.
    func customizeOnTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its progress tint color can be customized.
public protocol ProgressTintColorCustomizable: ViewCustomizable {

    /// Customizes the progress tint color.
    /// - Parameter style: A `ColorStyle` that describes the progress tint color.
    func customizeProgressTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its section index background color can be customized.
public protocol SectionIndexBackgroundColorCustomizable: ViewCustomizable {

    /// Customizes the section index background color.
    /// - Parameter style: A `ColorStyle` that describes the section index background color.
    func customizeSectionIndexBackgroundColor(using style: ColorStyle)

}

/// A protocol that describes a view that its section index color can be customized.
public protocol SectionIndexColorCustomizable: ViewCustomizable {

    /// Customizes the section index color.
    /// - Parameter style: A `ColorStyle` that describes the section index color.
    func customizeSectionIndexColor(using style: ColorStyle)

}

/// A protocol that describes a view that its section index tracking background color can be customized.
public protocol SectionIndexTrackingBackgroundColorCustomizable: ViewCustomizable {

    /// Customizes the section index tracking background color.
    /// - Parameter style: A `ColorStyle` that describes the section index tracking background color.
    func customizeSectionIndexTrackingBackgroundColor(using style: ColorStyle)

}

/// A protocol that describes a view that its separator color can be customized.
public protocol SeparatorColorCustomizable: ViewCustomizable {

    /// Customizes the separator color.
    /// - Parameter style: A `ColorStyle` that describes the separator color.
    func customizeSeparatorColor(using style: ColorStyle)

}

/// A protocol that describes a view that its shadow color can be customized.
public protocol ShadowColorCustomizable: ViewCustomizable {

    /// Customizes the shadow color.
    /// - Parameter style: A `ColorStyle` that describes the shadow color.
    func customizeShadowColor(using style: ColorStyle)

}

/// A protocol that describes a view that its text color can be customized.
public protocol TextColorCustomizable: ViewCustomizable {

    /// Customizes the text color.
    /// - Parameter style: A `ColorStyle` that describes the text color.
    func customizeTextColor(using style: ColorStyle)

}

/// A protocol that describes a view that its thumb tint color can be customized.
public protocol ThumbTintColorCustomizable: ViewCustomizable {

    /// Customizes the thumb tint color.
    /// - Parameter style: A `ColorStyle` that describes the thumb tint color.
    func customizeThumbTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its tint color can be customized.
public protocol TintColorCustomizable: ViewCustomizable {

    /// Customizes the tint color.
    /// - Parameter style: A `ColorStyle` that describes the tint color.
    func customizeTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its title color can be customized.
public protocol TitleColorCustomizable: ViewCustomizable {

    /// Customizes the title color.
    /// - Parameter style: A `ColorStyle` that describes the title color.
    func customizeTitleColor(using style: ColorStyle)

}

/// A protocol that describes a view that its title shadow color can be customized.
public protocol TitleShadowColorCustomizable: ViewCustomizable {

    /// Customizes the title shadow color.
    /// - Parameter style: A `ColorStyle` that describes the title shadow color.
    func customizeTitleShadowColor(using style: ColorStyle)

}

/// A protocol that describes a view that its track tint color can be customized.
public protocol TrackTintColorCustomizable: ViewCustomizable {

    /// Customizes the track tint color.
    /// - Parameter style: A `ColorStyle` that describes the track tint color.
    func customizeTrackTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its unselected item tint color can be customized.
public protocol UnselectedItemTintColorCustomizable: ViewCustomizable {

    /// Customizes the unselected item tint color.
    /// - Parameter style: A `ColorStyle` that describes the unselected item tint color.
    func customizeUnselectedItemTintColor(using style: ColorStyle)

}

extension ViewCustomizable {

    /// Returns a color that will be used in current state.
    /// - Parameter style: A `ColorStyle` that describes the color.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: An `UIColor` that will be used in current state, or `nil` if no color is set.
    func selectedColor(from style: ColorStyle, usingNormalFor states: [UIControlState] = []) -> UIColor? {
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

    /// Customizes a color through a setter method.
    /// - Parameter style: A `ColorStyle` that describes a color.
    /// - Parameter setter: A setter method that will customize a color in different states.
    /// - Parameter color: An `UIColor` that will be used.
    /// - Parameter state: An `UIControlState` that will use the color.
    func customizeColor(using style: ColorStyle, through setter: (_ color: UIColor?, _ state: UIControlState) -> ()) {
        setter(style.normal(), .normal)
        if let styleGroup = style as? ColorStyleGroup {
            setter(styleGroup.highlighted(), .highlighted)
            setter(styleGroup.disabled(), .disabled)
            setter(styleGroup.selected(), .selected)
            setter(styleGroup.focused(), .focused)
        }
    }

}

extension UIBarButtonItem: TintColorCustomizable {

    public func customizeTintColor(using style: ColorStyle) {
        tintColor = selectedColor(from: style)
    }

}

extension UITabBarItem: BadgeColorCustomizable {

    public func customizeBadgeColor(using style: ColorStyle) {
        if #available(iOS 10.0, *) {
            badgeColor = selectedColor(from: style)
        }
    }

}

extension UIView: TintColorCustomizable, BackgroundColorCustomizable, BorderColorCustomizable {

    public func customizeTintColor(using style: ColorStyle) {
        tintColor = selectedColor(from: style)
    }

    public func customizeBackgroundColor(using style: ColorStyle) {
        backgroundColor = selectedColor(from: style)
    }

    public func customizeBorderColor(using style: ColorStyle) {
        layer.borderColor = selectedColor(from: style)?.cgColor
    }

}

extension UIActivityIndicatorView: IndicatorColorCustomizable {

    public func customizeIndicatorColor(using style: ColorStyle) {
        color = selectedColor(from: style)
    }

}

extension UIButton: TitleColorCustomizable, TitleShadowColorCustomizable {

    public func customizeTitleColor(using style: ColorStyle) {
        customizeColor(using: style, through: setTitleColor)
    }

    public func customizeTitleShadowColor(using style: ColorStyle) {
        customizeColor(using: style, through: setTitleShadowColor)
    }

}

extension UISlider: MinimumTrackTintColorCustomizable, MaximumTrackTintColorCustomizable, ThumbTintColorCustomizable {

    public func customizeMinimumTrackTintColor(using style: ColorStyle) {
        minimumTrackTintColor = selectedColor(from: style)
    }

    public func customizeMaximumTrackTintColor(using style: ColorStyle) {
        maximumTrackTintColor = selectedColor(from: style)
    }

    public func customizeThumbTintColor(using style: ColorStyle) {
        thumbTintColor = selectedColor(from: style)
    }

}

extension UISwitch: OnTintColorCustomizable, ThumbTintColorCustomizable {

    public func customizeOnTintColor(using style: ColorStyle) {
        onTintColor = selectedColor(from: style)
    }

    public func customizeThumbTintColor(using style: ColorStyle) {
        thumbTintColor = selectedColor(from: style)
    }

}

extension UITextField: TextColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selectedColor(from: style)
    }

}

extension UILabel: TextColorCustomizable, ShadowColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selectedColor(from: style)
        if let styleGroup = style as? ColorStyleGroup {
            highlightedTextColor = styleGroup.highlighted()
        }
    }

    public func customizeShadowColor(using style: ColorStyle) {
        shadowColor = selectedColor(from: style)
    }

}

extension UINavigationBar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

}

extension UIProgressView: ProgressTintColorCustomizable, TrackTintColorCustomizable {

    public func customizeProgressTintColor(using style: ColorStyle) {
        progressTintColor = selectedColor(from: style)
    }

    public func customizeTrackTintColor(using style: ColorStyle) {
        trackTintColor = selectedColor(from: style)
    }

}

extension UITableView: SeparatorColorCustomizable, SectionIndexColorCustomizable, SectionIndexBackgroundColorCustomizable, SectionIndexTrackingBackgroundColorCustomizable {

    public func customizeSeparatorColor(using style: ColorStyle) {
        separatorColor = selectedColor(from: style)
    }

    public func customizeSectionIndexColor(using style: ColorStyle) {
        sectionIndexColor = selectedColor(from: style)
    }

    public func customizeSectionIndexBackgroundColor(using style: ColorStyle) {
        sectionIndexBackgroundColor = selectedColor(from: style)
    }

    public func customizeSectionIndexTrackingBackgroundColor(using style: ColorStyle) {
        sectionIndexTrackingBackgroundColor = selectedColor(from: style)
    }

}

extension UITextView: TextColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selectedColor(from: style)
    }

}

extension UISearchBar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

}

extension UITabBar: BarTintColorCustomizable, UnselectedItemTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

    public func customizeUnselectedItemTintColor(using style: ColorStyle) {
        if #available(iOS 10.0, *) {
            unselectedItemTintColor = selectedColor(from: style)
        }
    }

}

extension UIToolbar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

}
