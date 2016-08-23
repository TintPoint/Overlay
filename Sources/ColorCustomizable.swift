//
//  ColorCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol BackgroundColorCustomizable: ViewCustomizable {
    
    func customizeBackgroundColor(using style: ColorStyle)
    
}

public protocol BadgeColorCustomizable: ViewCustomizable {
    
    func customizeBadgeColor(using style: ColorStyle)
    
}

public protocol BarTintColorCustomizable: ViewCustomizable {
    
    func customizeBarTintColor(using style: ColorStyle)
    
}

public protocol BorderColorCustomizable: ViewCustomizable {
    
    func customizeBorderColor(using style: ColorStyle)
    
}

public protocol IndicatorColorCustomizable: ViewCustomizable {
    
    func customizeIndicatorColor(using style: ColorStyle)
    
}

public protocol MaximumTrackTintColorCustomizable: ViewCustomizable {
    
    func customizeMaximumTrackTintColor(using style: ColorStyle)
    
}

public protocol MinimumTrackTintColorCustomizable: ViewCustomizable {
    
    func customizeMinimumTrackTintColor(using style: ColorStyle)
    
}

public protocol OnTintColorCustomizable: ViewCustomizable {
    
    func customizeOnTintColor(using style: ColorStyle)
    
}

public protocol ProgressTintColorCustomizable: ViewCustomizable {
    
    func customizeProgressTintColor(using style: ColorStyle)
    
}

public protocol SectionIndexBackgroundColorCustomizable: ViewCustomizable {
    
    func customizeSectionIndexBackgroundColor(using style: ColorStyle)
    
}

public protocol SectionIndexColorCustomizable: ViewCustomizable {
    
    func customizeSectionIndexColor(using style: ColorStyle)
    
}

public protocol SectionIndexTrackingBackgroundColorCustomizable: ViewCustomizable {
    
    func customizeSectionIndexTrackingBackgroundColor(using style: ColorStyle)
    
}

public protocol SeparatorColorCustomizable: ViewCustomizable {
    
    func customizeSeparatorColor(using style: ColorStyle)
    
}

public protocol ShadowColorCustomizable: ViewCustomizable {
    
    func customizeShadowColor(using style: ColorStyle)
    
}

public protocol TextColorCustomizable: ViewCustomizable {
    
    func customizeTextColor(using style: ColorStyle)
    
}

public protocol ThumbTintColorCustomizable: ViewCustomizable {
    
    func customizeThumbTintColor(using style: ColorStyle)
    
}

public protocol TintColorCustomizable: ViewCustomizable {
    
    func customizeTintColor(using style: ColorStyle)
    
}

public protocol TitleColorCustomizable: ViewCustomizable {
    
    func customizeTitleColor(using style: ColorStyle)
    
}

public protocol TitleShadowColorCustomizable: ViewCustomizable {
    
    func customizeTitleShadowColor(using style: ColorStyle)
    
}

public protocol TrackTintColorCustomizable: ViewCustomizable {
    
    func customizeTrackTintColor(using style: ColorStyle)
    
}

public protocol UnselectedItemTintColorCustomizable: ViewCustomizable {
    
    func customizeUnselectedItemTintColor(using style: ColorStyle)
    
}

extension ViewCustomizable {
    
    func selected(_ style: ColorStyle, except states: [UIControlState] = []) -> UIColor? {
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
    
    func setColor(_ style: ColorStyle, for setter: (UIColor?, UIControlState) -> ()) {
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
        tintColor = selected(style)
    }
    
}

extension UITabBarItem: BadgeColorCustomizable {

    public func customizeBadgeColor(using style: ColorStyle) {
        if #available(iOS 10.0, *) {
            badgeColor = selected(style)
        }
    }
    
}

extension UIView: TintColorCustomizable, BackgroundColorCustomizable, BorderColorCustomizable {

    public func customizeTintColor(using style: ColorStyle) {
        tintColor = selected(style)
    }
    
    public func customizeBackgroundColor(using style: ColorStyle) {
        backgroundColor = selected(style)
    }
    
    public func customizeBorderColor(using style: ColorStyle) {
        layer.borderColor = selected(style)?.cgColor
    }
    
}

extension UIActivityIndicatorView: IndicatorColorCustomizable {

    public func customizeIndicatorColor(using style: ColorStyle) {
        color = selected(style)
    }
    
}

extension UIButton: TitleColorCustomizable, TitleShadowColorCustomizable {

    public func customizeTitleColor(using style: ColorStyle) {
        setColor(style, for: setTitleColor)
    }
    
    public func customizeTitleShadowColor(using style: ColorStyle) {
        setColor(style, for: setTitleShadowColor)
    }

}

extension UISlider: MinimumTrackTintColorCustomizable, MaximumTrackTintColorCustomizable, ThumbTintColorCustomizable {
    
    public func customizeMinimumTrackTintColor(using style: ColorStyle) {
        minimumTrackTintColor = selected(style)
    }
    
    public func customizeMaximumTrackTintColor(using style: ColorStyle) {
        maximumTrackTintColor = selected(style)
    }
    
    public func customizeThumbTintColor(using style: ColorStyle) {
        thumbTintColor = selected(style)
    }
    
}

extension UISwitch: OnTintColorCustomizable, ThumbTintColorCustomizable {

    public func customizeOnTintColor(using style: ColorStyle) {
        onTintColor = selected(style)
    }
    
    public func customizeThumbTintColor(using style: ColorStyle) {
        thumbTintColor = selected(style)
    }
    
}

extension UITextField: TextColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selected(style)
    }
    
}

extension UILabel: TextColorCustomizable, ShadowColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selected(style, except: [.highlighted])
        if let styleGroup = style as? ColorStyleGroup {
            highlightedTextColor = styleGroup.highlighted()
        }
    }
    
    public func customizeShadowColor(using style: ColorStyle) {
        shadowColor = selected(style)
    }
    
}

extension UINavigationBar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selected(style)
    }
    
}

extension UIProgressView: ProgressTintColorCustomizable, TrackTintColorCustomizable {
    
    public func customizeProgressTintColor(using style: ColorStyle) {
        progressTintColor = selected(style)
    }
    
    public func customizeTrackTintColor(using style: ColorStyle) {
        trackTintColor = selected(style)
    }
    
}

extension UITableView: SeparatorColorCustomizable, SectionIndexColorCustomizable, SectionIndexBackgroundColorCustomizable, SectionIndexTrackingBackgroundColorCustomizable {

    public func customizeSeparatorColor(using style: ColorStyle) {
        separatorColor = selected(style)
    }
    
    public func customizeSectionIndexColor(using style: ColorStyle) {
        sectionIndexColor = selected(style)
    }
    
    public func customizeSectionIndexBackgroundColor(using style: ColorStyle) {
        sectionIndexBackgroundColor = selected(style)
    }
    
    public func customizeSectionIndexTrackingBackgroundColor(using style: ColorStyle) {
        sectionIndexTrackingBackgroundColor = selected(style)
    }
    
}

extension UITextView: TextColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selected(style)
    }
    
}

extension UISearchBar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selected(style)
    }
    
}

extension UITabBar: BarTintColorCustomizable, UnselectedItemTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selected(style)
    }

    public func customizeUnselectedItemTintColor(using style: ColorStyle) {
        if #available(iOS 10.0, *) {
            unselectedItemTintColor = selected(style)
        }
    }

}

extension UIToolbar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selected(style)
    }
    
}
