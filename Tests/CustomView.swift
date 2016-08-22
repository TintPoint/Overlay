//
//  CustomView.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class CustomBarButtonItem: UIBarButtonItem, CustomTintColor, CustomImage, CustomLandscapeImagePhone {
    
    var tintColorStyle: ColorStyle = TestColor.first
    var imageStyle: ImageStyle = TestImage.first
    var landscapeImagePhoneStyle: ImageStyle = TestImage.second
    
}

class CustomTabBarItem: UITabBarItem, CustomBadgeColor, CustomImage, CustomSelectedImage {
    
    var badgeColorStyle: ColorStyle = TestColor.first
    var imageStyle: ImageStyle = TestImage.first
    var landscapeImagePhoneStyle: ImageStyle = TestImage.second
    var selectedImageStyle: ImageStyle = TestImage.third
    
}

class CustomView: UIView, CustomLayout, CustomTintColor, CustomBorderColor, CustomBackgroundColor {
    
    var contentNib: UINib = UINib(nibName: "CustomView", bundle: Bundle(for: CustomView.self))
    var tintColorStyle: ColorStyle = TestColor.first
    var borderColorStyle: ColorStyle = TestColor.second
    var backgroundColorStyle: ColorStyle = TestColor.third
    
}

class CustomActivityIndicatorView: UIActivityIndicatorView, CustomIndicatorColor {
    
    var indicatorColorStyle: ColorStyle = TestColor.first
    
}

class CustomButton: UIButton, CustomTitleColor, CustomTitleShadowColor, CustomImage, CustomBackgroundImage {
    
    var titleColorStyle: ColorStyle = TestColor.first
    var titleShadowColorStyle: ColorStyle = TestColor.second
    var imageStyle: ImageStyle = TestImage.first
    var backgroundImageStyle: ImageStyle = TestImage.second
    
}

class CustomSlider: UISlider, CustomMinimumTrackTintColor, CustomMaximumTrackTintColor, CustomThumbTintColor, CustomMinimumValueImage, CustomMaximumValueImage {
    
    var minimumTrackTintColorStyle: ColorStyle = TestColor.first
    var maximumTrackTintColorStyle: ColorStyle = TestColor.second
    var thumbTintColorStyle: ColorStyle = TestColor.third
    var minimumValueImageStyle: ImageStyle = TestImage.first
    var maximumValueImageStyle: ImageStyle = TestImage.second
    
}

class CustomImageSlider: UISlider, CustomMinimumTrackImage, CustomMaximumTrackImage, CustomThumbImage {
    
    var minimumTrackImageStyle: ImageStyle = TestImage.first
    var maximumTrackImageStyle: ImageStyle = TestImage.second
    var thumbImageStyle: ImageStyle = TestImage.third
    
}

class CustomStepper: UIStepper, CustomBackgroundImage, CustomDecrementImage, CustomIncrementImage {
    
    var backgroundImageStyle: ImageStyle = TestImage.first
    var decrementImageStyle: ImageStyle = TestImage.second
    var incrementImageStyle: ImageStyle = TestImage.third
    
}

class CustomSwitch: UISwitch, CustomOnTintColor, CustomThumbTintColor, CustomOnImage, CustomOffImage {
    
    var onTintColorStyle: ColorStyle = TestColor.first
    var thumbTintColorStyle: ColorStyle = TestColor.second
    var onImageStyle: ImageStyle = TestImage.first
    var offImageStyle: ImageStyle = TestImage.second
    
}

class CustomTextField: UITextField, CustomFont, CustomTextColor {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    
}

class CustomImageView: UIImageView, CustomImage, CustomHighlightedImage {

    var imageStyle: ImageStyle = TestImage.first
    var highlightedImageStyle: ImageStyle = TestImage.second
    
}

class CustomLabel: UILabel, CustomFont, CustomTextColor, CustomShadowColor {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    var shadowColorStyle: ColorStyle = TestColor.second
    
}

class CustomNavigationBar: UINavigationBar, CustomBarTintColor, CustomShadowImage {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var shadowImageStyle: ImageStyle = TestImage.first
    
}

class CustomProgressView: UIProgressView, CustomProgressTintColor, CustomTrackTintColor {
    
    var progressTintColorStyle: ColorStyle = TestColor.first
    var trackTintColorStyle: ColorStyle = TestColor.second
    
}

class CustomImageProgressView: UIProgressView, CustomProgressImage, CustomTrackImage {
    
    var progressImageStyle: ImageStyle = TestImage.first
    var trackImageStyle: ImageStyle = TestImage.second
    
}

class CustomTableView: UITableView, CustomSeparatorColor, CustomSectionIndexColor, CustomSectionIndexBackgroundColor, CustomSectionIndexTrackingBackgroundColor {
    
    var separatorColorStyle: ColorStyle = TestColor.first
    var sectionIndexColorStyle: ColorStyle = TestColor.second
    var sectionIndexBackgroundColorStyle: ColorStyle = TestColor.third
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle = TestColor.fourth
    
}

class CustomTextView: UITextView, CustomFont, CustomTextColor {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    
}

class CustomSearchBar: UISearchBar, CustomBarTintColor, CustomBackgroundImage, CustomSearchFieldBackgroundImage, CustomScopeBarButtonBackgroundImage {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var backgroundImageStyle: ImageStyle = TestImage.first
    var searchFieldBackgroundImageStyle: ImageStyle = TestImage.second
    var scopeBarButtonBackgroundImageStyle: ImageStyle = TestImage.third
    
}

class CustomTabBar: UITabBar, CustomBarTintColor, CustomUnselectedItemTintColor, CustomShadowImage, CustomBackgroundImage {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var unselectedItemTintColorStyle: ColorStyle = TestColor.second
    var shadowImageStyle: ImageStyle = TestImage.first
    var backgroundImageStyle: ImageStyle = TestImage.second
    
}

class CustomToolbar: UIToolbar, CustomBarTintColor {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    
}
