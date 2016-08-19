//
//  Refreshing.swift
//  Overlay
//
//  Created by Justin Jia on 6/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

extension UIBarButtonItem {
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        refresh()
    }
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        refresh()
    }

}

extension UITabBarItem {
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        refresh()
    }
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        refresh()
    }
    
}

extension UIView {

    open override func awakeFromNib() {
        super.awakeFromNib()
        refresh()
    }

    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        refresh()
    }

}

extension UIBarButtonItem: ViewCustomizable {
    
    open func refresh() {
        if let style = self as? CustomBarItemTintColor {
            tintColor = style.selected(style.tintColorStyle)
        }
        
        if let style = self as? CustomImage {
            image = style.selected(style.imageStyle)
        }
        
        if let style = self as? CustomBarItemLandscapeImagePhone {
            landscapeImagePhone = style.selected(style.landscapeImagePhoneStyle)
        }
    }
    
}

extension UITabBarItem: ViewCustomizable {
    
    open func refresh() {
        if #available(iOS 10.0, *), let style = self as? CustomBarItemBadgeColor {
            badgeColor = style.selected(style.badgeColorStyle)
        }
        
        if let style = self as? CustomImage {
            image = style.selected(style.imageStyle)
        }
        
        if let style = self as? CustomBarItemSelectedImage {
            selectedImage = style.selected(style.selectedImageStyle)
        }
    }
    
}

extension UIView: ViewCustomizable {
    
    open func refresh() {
        if let layout = self as? CustomLayout, let contentView = layout.contentView(of: self), !subviews.contains(contentView) {
            contentView.translatesAutoresizingMaskIntoConstraints = false
            insertSubview(contentView, at: 0)
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            contentView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            contentView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
            contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        }

        if let style = self as? CustomTintColor {
            tintColor = style.selected(style.tintColorStyle)
        }
        
        if let style = self as? CustomBorderColor {
            layer.borderColor = style.selected(style.borderColorStyle)?.cgColor
        }

        if let style = self as? CustomBackgroundColor {
            backgroundColor = style.selected(style.backgroundColorStyle)
        }
    }

}

extension UIActivityIndicatorView {

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomActivityIndicatorColor {
            color = style.selected(style.colorStyle)
        }
    }

}

extension UIButton {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomButtonTitleColor {
            style.setColor(style.titleColorStyle, for: setTitleColor)
        }
        
        if let style = self as? CustomButtonTitleShadowColor {
            style.setColor(style.titleShadowColorStyle, for: setTitleShadowColor)
        }
        
        if let style = self as? CustomButtonImage {
            style.setImage(style.imageStyle, for: setImage)
        }
        
        if let style = self as? CustomButtonBackgroundImage {
            style.setImage(style.backgroundImageStyle, for: setBackgroundImage)
        }
    }
    
}

extension UISlider {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomSliderMinimumTrackTintColor {
            minimumTrackTintColor = style.selected(style.minimumTrackTintColorStyle)
        }

        if let style = self as? CustomSliderMaximumTrackTintColor {
            maximumTrackTintColor = style.selected(style.maximumTrackTintColorStyle)
        }
        
        if let style = self as? CustomSliderThumbTintColor {
            thumbTintColor = style.selected(style.thumbTintColorStyle)
        }
        
        if let style = self as? CustomSliderMinimumValueImage {
            minimumValueImage = style.selected(style.minimumValueImageStyle)
        }

        if let style = self as? CustomSliderMaximumValueImage {
            maximumValueImage = style.selected(style.maximumValueImageStyle)
        }
        
        if let style = self as? CustomSliderMinimumTrackImage {
            style.setImage(style.minimumTrackImageStyle, for: setMinimumTrackImage)
        }
        
        if let style = self as? CustomSliderMaximumTrackImage {
            style.setImage(style.maximumTrackImageStyle, for: setMaximumTrackImage)
        }
        
        if let style = self as? CustomSliderThumbImage {
            style.setImage(style.thumbImageStyle, for: setThumbImage)
        }
    }
    
}

extension UIStepper {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomStepperBackgroundImage {
            style.setImage(style.backgroundImageStyle, for: setBackgroundImage)
        }
        
        if let style = self as? CustomStepperDecrementImage {
            style.setImage(style.decrementImageStyle, for: setDecrementImage)
        }
        
        if let style = self as? CustomStepperIncrementImage {
            style.setImage(style.incrementImageStyle, for: setIncrementImage)
        }
    }
    
}

extension UISwitch {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomSwitchOnTintColor {
            onTintColor = style.selected(style.onTintColorStyle)
        }
        
        if let style = self as? CustomSwitchThumbTintColor {
            thumbTintColor = style.selected(style.thumbTintColorStyle)
        }
        
        if let style = self as? CustomSwitchOnImage {
            onImage = style.selected(style.onImageStyle)
        }
        
        if let style = self as? CustomSwitchOffImage {
            offImage = style.selected(style.offImageStyle)
        }
    }
    
}

extension UITextField {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomFont {
            font = style.selected(style.fontStyle)
        }
        
        if let style = self as? CustomTextColor {
            textColor = style.selected(style.textColorStyle)
        }
    }
    
}

extension UIImageView {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomImage {
            image = style.selected(style.imageStyle)
        }
        
        if let style = self as? CustomHighlightedImage {
            highlightedImage = style.selected(style.highlightedImageStyle)
        }
    }
    
}

extension UILabel {

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomLabelFont {
            font = style.selected(style.fontStyle)
        }

        if let style = self as? CustomLabelTextColor {
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

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
        
        if let style = self as? CustomShadowImage {
            shadowImage = style.selected(style.shadowImageStyle)
        }
    }

}

extension UIProgressView {

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomProgressTintColor {
            progressTintColor = style.selected(style.progressTintColorStyle)
        }

        if let style = self as? CustomProgressTrackTintColor {
            trackTintColor = style.selected(style.trackTintColorStyle)
        }
        
        if let style = self as? CustomProgressImage {
            progressImage = style.selected(style.progressImageStyle)
        }
        
        if let style = self as? CustomProgressTrackImage {
            trackImage = style.selected(style.trackImageStyle)
        }
    }

}

extension UITableView {
    
    open override func refresh() {
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

extension UITextView {
    
    open override func refresh() {
        super.refresh()
        
        if let style = self as? CustomFont {
            font = style.selected(style.fontStyle)
        }
        
        if let style = self as? CustomTextColor {
            textColor = style.selected(style.textColorStyle)
        }
    }
    
}

extension UISearchBar {

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
        
        if let style = self as? CustomBarBackgroundImage {
            backgroundImage = style.selected(style.backgroundImageStyle)
        }
        
        if let style = self as? CustomBarSearchFieldBackgroundImage {
            style.setImage(style.searchFieldBackgroundImageStyle, for: setSearchFieldBackgroundImage)
        }
        
        if let style = self as? CustomBarScopeBarButtonBackgroundImage {
            style.setImage(style.scopeBarButtonBackgroundImageStyle, for: setScopeBarButtonBackgroundImage)
        }
    }

}

extension UITabBar {

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }

        if #available(iOS 10.0, *), let style = self as? CustomBarUnselectedItemTintColor {
            unselectedItemTintColor = style.selected(style.unselectedItemTintColorStyle)
        }

        if let style = self as? CustomShadowImage {
            shadowImage = style.selected(style.shadowImageStyle)
        }
        
        if let style = self as? CustomBarBackgroundImage {
            backgroundImage = style.selected(style.backgroundImageStyle)
        }
    }

}

extension UIToolbar {

    open override func refresh() {
        super.refresh()

        if let style = self as? CustomBarTintColor {
            barTintColor = style.selected(style.barTintColorStyle)
        }
    }

}

