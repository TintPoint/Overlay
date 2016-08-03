//
//  Refreshing.swift
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

extension UIView: ViewCustomizable {

    public func refresh() {
        if let style = self as? CustomTintColor {
            tintColor = style.selected(style.tintColorStyle)
        }

        if let style = self as? CustomBackgroundColor {
            backgroundColor = style.selected(style.backgroundColorStyle)
        }
    }

}

public extension UIActivityIndicatorView {

    override public func refresh() {
        super.refresh()

        if let style = self as? CustomActivityIndicatorViewColor {
            color = style.selected(style.colorStyle)
        }
    }

}

public extension UILabel {

    override public func refresh() {
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

public extension UINavigationBar {

    override public func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}

public extension UIProgressView {

    override public func refresh() {
        super.refresh()

        if let style = self as? CustomProgressTintColor {
            progressTintColor = style.selected(style.progressTintColorStyle)
        }

        if let style = self as? CustomProgressTrackTintColor {
            trackTintColor = style.selected(style.trackTintColorStyle)
        }
    }

}

public extension UISearchBar {

    override public func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}

public extension UITabBar {

    override public func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }

        if #available(iOS 10.0, *) {
            if let style = self as? CustomTabBarUnselectedItemTintColor {
                unselectedItemTintColor = style.selected(style.unselectedItemTintColorStyle)
            }
        }
    }

}

public extension UIToolbar {

    override public func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}

public extension UIButton {
    
    override public func refresh() {
        super.refresh()
        
        if let style = self as? CustomButtonTitleColor {
            setTitleColor(style.titleColorStyle.normal(), for: [])
            if let styleGroup = style.titleColorStyle as? ColorStyleGroup {
                setTitleColor(styleGroup.highlighted(), for: .highlighted)
                setTitleColor(styleGroup.disabled(), for: .disabled)
                setTitleColor(styleGroup.selected(), for: .selected)
                setTitleColor(styleGroup.focused(), for: .focused)
            }
        }
        
        if let style = self as? CustomButtonTitleShadowColor {
            setTitleShadowColor(style.titleShadowColorStyle.normal(), for: [])
            if let styleGroup = style.titleShadowColorStyle as? ColorStyleGroup {
                setTitleShadowColor(styleGroup.highlighted(), for: .highlighted)
                setTitleShadowColor(styleGroup.disabled(), for: .disabled)
                setTitleShadowColor(styleGroup.selected(), for: .selected)
                setTitleShadowColor(styleGroup.focused(), for: .focused)
            }
        }
    }
    
}

public extension UISwitch {
    
    override public func refresh() {
        super.refresh()
        
        if let style = self as? CustomSwitchOnTintColor {
            onTintColor = style.selected(style.onTintColorStyle)
        }
        
        if let style = self as? CustomSwitchThumbTintColor {
            thumbTintColor = style.selected(style.thumbTintColorStyle)
        }
    }
    
}

public extension UITextField {
    
    override public func refresh() {
        super.refresh()
        
        if let style = self as? CustomFont {
            font = style.selected(style.fontStyle)
        }
        
        if let style = self as? CustomTextColor {
            textColor = style.selected(style.textColorStyle)
        }
    }
    
}

public extension UITableView {
    
    override public func refresh() {
        super.refresh()
        
        if let style = self as? CustomTableViewSeparatorColor {
            separatorColor = style.selected(style.separatorColorStyle)
        }
        
        if let style = self as? CustomTableViewSectionIndexColor {
            sectionIndexColor = style.selected(style.sectionIndexColorStyle)
        }
        
        if let style = self as? CustomTableViewSectionIndexBackgroundColor {
            sectionIndexBackgroundColor = style.selected(style.sectionIndexBackgroundColorStyle)
        }
        
        if let style = self as? CustomTableViewSectionIndexTrackingBackgroundColor {
            sectionIndexTrackingBackgroundColor = style.selected(style.sectionIndexTrackingBackgroundColorStyle)
        }
    }
    
}

public extension UITextView {
    
    override public func refresh() {
        super.refresh()
        
        if let style = self as? CustomFont {
            font = style.selected(style.fontStyle)
        }
        
        if let style = self as? CustomTextColor {
            textColor = style.selected(style.textColorStyle)
        }
    }
    
}
