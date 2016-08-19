//
//  CustomView.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class CustomBarButtonItem: UIBarButtonItem, CustomBarItemTintColor, CustomImage, CustomBarItemLandscapeImagePhone {
    
    var tintColorStyle: ColorStyle = TestColor.first
    var imageStyle: ImageStyle = TestImage.first
    var landscapeImagePhoneStyle: ImageStyle = TestImage.second
    
}

class CustomTabBarItem: UITabBarItem, CustomBarItemBadgeColor, CustomImage, CustomBarItemSelectedImage {
    
    var badgeColorStyle: ColorStyle = TestColor.first
    var imageStyle: ImageStyle = TestImage.first
    var landscapeImagePhoneStyle: ImageStyle = TestImage.second
    var selectedImageStyle: ImageStyle = TestImage.third
    
}

class CustomView: UIView, CustomLayout, CustomTintColor, CustomBorderColor, CustomBackgroundColor {
    
    var nib: UINib = UINib(nibName: "CustomView", bundle: Bundle(for: CustomView.self))
    var tintColorStyle: ColorStyle = TestColor.first
    var borderColorStyle: ColorStyle = TestColor.second
    var backgroundColorStyle: ColorStyle = TestColor.third
    
}

class CustomActivityIndicatorView: UIActivityIndicatorView, CustomActivityIndicatorColor {
    
    var colorStyle: ColorStyle = TestColor.first
    
}

class CustomButton: UIButton, CustomButtonTitleColor, CustomButtonTitleShadowColor, CustomButtonImage, CustomButtonBackgroundImage {
    
    var titleColorStyle: ColorStyle = TestColor.first
    var titleShadowColorStyle: ColorStyle = TestColor.second
    var imageStyle: ImageStyle = TestImage.first
    var backgroundImageStyle: ImageStyle = TestImage.second
    
}

class CustomSlider: UISlider, CustomSliderMinimumTrackTintColor, CustomSliderMaximumTrackTintColor, CustomSliderThumbTintColor, CustomSliderMinimumValueImage, CustomSliderMaximumValueImage {
    
    var minimumTrackTintColorStyle: ColorStyle = TestColor.first
    var maximumTrackTintColorStyle: ColorStyle = TestColor.second
    var thumbTintColorStyle: ColorStyle = TestColor.third
    var minimumValueImageStyle: ImageStyle = TestImage.first
    var maximumValueImageStyle: ImageStyle = TestImage.second
    
}

class CustomImageSlider: UISlider, CustomSliderMinimumTrackImage, CustomSliderMaximumTrackImage, CustomSliderThumbImage {
    
    var minimumTrackImageStyle: ImageStyle = TestImage.first
    var maximumTrackImageStyle: ImageStyle = TestImage.second
    var thumbImageStyle: ImageStyle = TestImage.third
    
}

class CustomStepper: UIStepper, CustomStepperBackgroundImage, CustomStepperDecrementImage, CustomStepperIncrementImage {
    
    var backgroundImageStyle: ImageStyle = TestImage.first
    var decrementImageStyle: ImageStyle = TestImage.second
    var incrementImageStyle: ImageStyle = TestImage.third
    
}

class CustomSwitch: UISwitch, CustomSwitchOnTintColor, CustomSwitchThumbTintColor, CustomSwitchOnImage, CustomSwitchOffImage {
    
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

class CustomLabel: UILabel, CustomLabelFont, CustomLabelTextColor, CustomShadowColor {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    var shadowColorStyle: ColorStyle = TestColor.second
    
}

class CustomNavigationBar: UINavigationBar, CustomBarTintColor, CustomShadowImage {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var shadowImageStyle: ImageStyle = TestImage.first
    
}

class CustomProgressView: UIProgressView, CustomProgressTintColor, CustomProgressTrackTintColor {
    
    var progressTintColorStyle: ColorStyle = TestColor.first
    var trackTintColorStyle: ColorStyle = TestColor.second
    
}

class CustomImageProgressView: UIProgressView, CustomProgressImage, CustomProgressTrackImage {
    
    var progressImageStyle: ImageStyle = TestImage.first
    var trackImageStyle: ImageStyle = TestImage.second
    
}

class CustomTableView: UITableView, CustomTableViewSeparatorColor, CustomTableViewSectionIndexColor, CustomTableViewSectionIndexBackgroundColor, CustomTableViewSectionIndexTrackingBackgroundColor {
    
    var separatorColorStyle: ColorStyle = TestColor.first
    var sectionIndexColorStyle: ColorStyle = TestColor.second
    var sectionIndexBackgroundColorStyle: ColorStyle = TestColor.third
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle = TestColor.fourth
    
}

class CustomTextView: UITextView, CustomFont, CustomTextColor {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    
}

class CustomSearchBar: UISearchBar, CustomBarTintColor, CustomBarBackgroundImage, CustomBarSearchFieldBackgroundImage, CustomBarScopeBarButtonBackgroundImage {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var backgroundImageStyle: ImageStyle = TestImage.first
    var searchFieldBackgroundImageStyle: ImageStyle = TestImage.second
    var scopeBarButtonBackgroundImageStyle: ImageStyle = TestImage.third
    
}

class CustomTabBar: UITabBar, CustomBarTintColor, CustomBarUnselectedItemTintColor, CustomShadowImage, CustomBarBackgroundImage {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var unselectedItemTintColorStyle: ColorStyle = TestColor.second
    var shadowImageStyle: ImageStyle = TestImage.first
    var backgroundImageStyle: ImageStyle = TestImage.second
    
}

class CustomToolbar: UIToolbar, CustomBarTintColor {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    
}
