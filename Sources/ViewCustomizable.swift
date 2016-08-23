//
//  ViewCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that can be customized.
public protocol ViewCustomizable {
    
    /// Updates the view's appearance.
    ///
    /// Your custom view can override this method to customize other properties.
    /// You need to call the super implementation at some point during your own `refresh` method.
    func refresh()
    
}

fileprivate extension ViewCustomizable {
    
    func customize() {
        if let view = self as? CustomLayout {
            view.customizeLayout(using: view.contentNib)
        }
        
        if let view = self as? CustomBackgroundColor {
            view.customizeBackgroundColor(using: view.backgroundColorStyle)
        }
        
        if let view = self as? CustomBadgeColor {
            view.customizeBadgeColor(using: view.badgeColorStyle)
        }
        
        if let view = self as? CustomBarTintColor {
            view.customizeBarTintColor(using: view.barTintColorStyle)
        }
        
        if let view = self as? CustomBorderColor {
            view.customizeBorderColor(using: view.borderColorStyle)
        }
        
        if let view = self as? CustomIndicatorColor {
            view.customizeIndicatorColor(using: view.indicatorColorStyle)
        }
        
        if let view = self as? CustomMaximumTrackTintColor {
            view.customizeMaximumTrackTintColor(using: view.maximumTrackTintColorStyle)
        }
        
        if let view = self as? CustomMinimumTrackTintColor {
            view.customizeMinimumTrackTintColor(using: view.minimumTrackTintColorStyle)
        }
        
        if let view = self as? CustomOnTintColor {
            view.customizeOnTintColor(using: view.onTintColorStyle)
        }
        
        if let view = self as? CustomProgressTintColor {
            view.customizeProgressTintColor(using: view.progressTintColorStyle)
        }
        
        if let view = self as? CustomSectionIndexBackgroundColor {
            view.customizeSectionIndexBackgroundColor(using: view.sectionIndexBackgroundColorStyle)
        }
        
        if let view = self as? CustomSectionIndexColor {
            view.customizeSectionIndexColor(using: view.sectionIndexColorStyle)
        }
        
        if let view = self as? CustomSectionIndexTrackingBackgroundColor {
            view.customizeSectionIndexTrackingBackgroundColor(using: view.sectionIndexTrackingBackgroundColorStyle)
        }
        
        if let view = self as? CustomSeparatorColor {
            view.customizeSeparatorColor(using: view.separatorColorStyle)
        }
        
        if let view = self as? CustomShadowColor {
            view.customizeShadowColor(using: view.shadowColorStyle)
        }
        
        if let view = self as? CustomTextColor {
            view.customizeTextColor(using: view.textColorStyle)
        }
        
        if let view = self as? CustomThumbTintColor {
            view.customizeThumbTintColor(using: view.thumbTintColorStyle)
        }
        
        if let view = self as? CustomTintColor {
            view.customizeTintColor(using: view.tintColorStyle)
        }
        
        if let view = self as? CustomTitleColor {
            view.customizeTitleColor(using: view.titleColorStyle)
        }
        
        if let view = self as? CustomTitleShadowColor {
            view.customizeTitleShadowColor(using: view.titleShadowColorStyle)
        }
        
        if let view = self as? CustomTrackTintColor {
            view.customizeTrackTintColor(using: view.trackTintColorStyle)
        }
        
        if let view = self as? CustomUnselectedItemTintColor {
            view.customizeUnselectedItemTintColor(using: view.unselectedItemTintColorStyle)
        }
        
        if let view = self as? CustomFont {
            view.customizeFont(using: view.fontStyle)
        }
        
        if let view = self as? CustomBackgroundImage {
            view.customizeBackgroundImage(using: view.backgroundImageStyle)
        }
        
        if let view = self as? CustomDecrementImage {
            view.customizeDecrementImage(using: view.decrementImageStyle)
        }
        
        if let view = self as? CustomHighlightedImage {
            view.customizeHighlightedImage(using: view.highlightedImageStyle)
        }
        
        if let view = self as? CustomImage {
            view.customizeImage(using: view.imageStyle)
        }
        
        if let view = self as? CustomIncrementImage {
            view.customizeIncrementImage(using: view.incrementImageStyle)
        }
        
        if let view = self as? CustomLandscapeImagePhone {
            view.customizeLandscapeImagePhone(using: view.landscapeImagePhoneStyle)
        }
        
        if let view = self as? CustomMaximumTrackImage {
            view.customizeMaximumTrackImage(using: view.maximumTrackImageStyle)
        }
        
        if let view = self as? CustomMaximumValueImage {
            view.customizeMaximumValueImage(using: view.maximumValueImageStyle)
        }
        
        if let view = self as? CustomMinimumTrackImage {
            view.customizeMinimumTrackImage(using: view.minimumTrackImageStyle)
        }
        
        if let view = self as? CustomMinimumValueImage {
            view.customizeMinimumValueImage(using: view.minimumValueImageStyle)
        }
        
        if let view = self as? CustomOffImage {
            view.customizeOffImage(using: view.offImageStyle)
        }
        
        if let view = self as? CustomOnImage {
            view.customizeOnImage(using: view.onImageStyle)
        }
        
        if let view = self as? CustomProgressImage {
            view.customizeProgressImage(using: view.progressImageStyle)
        }
        
        if let view = self as? CustomScopeBarButtonBackgroundImage {
            view.customizeScopeBarButtonBackgroundImage(using: view.scopeBarButtonBackgroundImageStyle)
        }
        
        if let view = self as? CustomSearchFieldBackgroundImage {
            view.customizeSearchFieldBackgroundImage(using: view.searchFieldBackgroundImageStyle)
        }
        
        if let view = self as? CustomSelectedImage {
            view.customizeSelectedImage(using: view.selectedImageStyle)
        }
        
        if let view = self as? CustomShadowImage {
            view.customizeShadowImage(using: view.shadowImageStyle)
        }
        
        if let view = self as? CustomThumbImage {
            view.customizeThumbImage(using: view.thumbImageStyle)
        }
        
        if let view = self as? CustomTrackImage {
            view.customizeTrackImage(using: view.trackImageStyle)
        }
    }
    
}

extension UIBarButtonItem {
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        refresh()
    }
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        refresh()
    }
    
    open func refresh() {
        customize()
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
    
    open func refresh() {
        customize()
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
    
    open func refresh() {
        customize()
    }
    
}
