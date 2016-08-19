//
//  CustomView.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class CustomBarItem: UIBarItem, CustomImage, CustomBarItemLandscapeImagePhone {
    
    var imageStyle: ImageStyle = TestImage.normal
    var landscapeImagePhoneStyle: ImageStyle = TestImage.disabled
    
}

class CustomBarButtonItem: UIBarButtonItem, CustomBarItemTintColor {
    
    var tintColorStyle: ColorStyle = TestColor.normal
    
}

class CustomTabBarItem: UITabBarItem, CustomBarItemBadgeColor, CustomBarItemSelectedImage {
    
    var badgeColorStyle: ColorStyle = TestColor.normal
    var selectedImageStyle: ImageStyle = TestImage.normal
    
}

class CustomView: UIView, CustomLayout, CustomTintColor, CustomBorderColor, CustomBackgroundColor {
    
    var nib: UINib = UINib(nibName: "CustomView", bundle: Bundle(for: CustomView.self))
    var tintColorStyle: ColorStyle = TestColor.normal
    var borderColorStyle: ColorStyle = TestColor.disabled
    var backgroundColorStyle: ColorStyle = TestColor.selected
    
}

class CustomActivityIndicatorView: UIActivityIndicatorView, CustomActivityIndicatorColor {
    
    var colorStyle: ColorStyle = TestColor.normal
    
}

class CustomButton: UIButton, CustomButtonTitleColor, CustomButtonTitleShadowColor, CustomButtonImage, CustomButtonBackgroundImage {
    
    var titleColorStyle: ColorStyle = TestColor.normal
    var titleShadowColorStyle: ColorStyle = TestColor.disabled
    var imageStyle: ImageStyle = TestImage.normal
    var backgroundImageStyle: ImageStyle = TestImage.disabled
    
}

class CustomSlider: UISlider, CustomSliderMinimumTrackTintColor, CustomSliderMaximumTrackTintColor, CustomSliderThumbTintColor, CustomSliderMinimumValueImage, CustomSliderMaximumValueImage, CustomSliderMinimumTrackImage, CustomSliderMaximumTrackImage, CustomSliderThumbImage {
    
    var minimumTrackTintColorStyle: ColorStyle = TestColor.normal
    var maximumTrackTintColorStyle: ColorStyle = TestColor.disabled
    var thumbTintColorStyle: ColorStyle = TestColor.selected
    var minimumValueImageStyle: ImageStyle = TestImage.normal
    var maximumValueImageStyle: ImageStyle = TestImage.disabled
    var minimumTrackImageStyle: ImageStyle = TestImage.selected
    var maximumTrackImageStyle: ImageStyle = TestImage.highlighted
    var thumbImageStyle: ImageStyle = TestImage.focused
    
}

class CustomStepper: UIStepper, CustomStepperBackgroundImage, CustomStepperDecrementImage, CustomStepperIncrementImage {
    
    var backgroundImageStyle: ImageStyle = TestImage.normal
    var decrementImageStyle: ImageStyle = TestImage.disabled
    var incrementImageStyle: ImageStyle = TestImage.selected
    
}

class CustomSwitch: UISwitch, CustomSwitchOnTintColor, CustomSwitchThumbTintColor, CustomSwitchOnImage, CustomSwitchOffImage {
    
    var onTintColorStyle: ColorStyle = TestColor.normal
    var thumbTintColorStyle: ColorStyle = TestColor.disabled
    var onImageStyle: ImageStyle = TestImage.normal
    var offImageStyle: ImageStyle = TestImage.disabled
    
}

class CustomTextField: UITextField, CustomFont, CustomTextColor {
    
    var fontStyle: FontStyle = TestFont.normal
    var textColorStyle: ColorStyle = TestColor.normal
    
}

class CustomImageView: UIImageView, CustomImage, CustomHighlightedImage {

    var imageStyle: ImageStyle = TestImage.normal
    var highlightedImageStyle: ImageStyle = TestImage.disabled
    
}

class CustomLabel: UILabel, CustomLabelFont, CustomLabelTextColor, CustomShadowColor {
    
    var fontStyle: FontStyle = TestFont.normal
    var textColorStyle: ColorStyle = TestColor.normal
    var shadowColorStyle: ColorStyle = TestColor.disabled
    
}

class CustomNavigationBar: UINavigationBar, CustomBarTintColor, CustomShadowImage {
    
    var barTintColorStyle: ColorStyle = TestColor.normal
    var shadowImageStyle: ImageStyle = TestImage.normal
    
}

class CustomProgressView: UIProgressView, CustomProgressTintColor, CustomProgressTrackTintColor, CustomProgressImage, CustomProgressTrackImage {
    
    var progressTintColorStyle: ColorStyle = TestColor.normal
    var trackTintColorStyle: ColorStyle = TestColor.disabled
    var progressImageStyle: ImageStyle = TestImage.normal
    var trackImageStyle: ImageStyle = TestImage.disabled
    
}

class CustomTableView: UITableView, CustomTableViewSeparatorColor, CustomTableViewSectionIndexColor, CustomTableViewSectionIndexBackgroundColor, CustomTableViewSectionIndexTrackingBackgroundColor {
    
    var separatorColorStyle: ColorStyle = TestColor.normal
    var sectionIndexColorStyle: ColorStyle = TestColor.disabled
    var sectionIndexBackgroundColorStyle: ColorStyle = TestColor.selected
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle = TestColor.highlighted
    
}

class CustomTextView: UITextView, CustomFont, CustomTextColor {
    
    var fontStyle: FontStyle = TestFont.normal
    var textColorStyle: ColorStyle = TestColor.normal
    
}

class CustomSearchBar: UISearchBar, CustomBarTintColor, CustomBarBackgroundImage, CustomBarSearchFieldBackgroundImage, CustomBarScopeBarButtonBackgroundImage {
    
    var barTintColorStyle: ColorStyle = TestColor.normal
    var backgroundImageStyle: ImageStyle = TestImage.normal
    var searchFieldBackgroundImageStyle: ImageStyle = TestImage.disabled
    var scopeBarButtonBackgroundImageStyle: ImageStyle = TestImage.selected
    
}

class CustomTabBar: UITabBar, CustomBarTintColor, CustomBarUnselectedItemTintColor, CustomShadowImage, CustomBarBackgroundImage {
    
    var barTintColorStyle: ColorStyle = TestColor.normal
    var unselectedItemTintColorStyle: ColorStyle = TestColor.disabled
    var shadowImageStyle: ImageStyle = TestImage.normal
    var backgroundImageStyle: ImageStyle = TestImage.disabled
    
}

class CustomToolbar: UIToolbar, CustomBarTintColor {
    
    var barTintColorStyle: ColorStyle = TestColor.normal
    
}
