//
//  CustomizingViewsTests.swift
//  Tests
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomBarButtonItem: UIBarButtonItem, CustomTintColor, CustomImage, CustomLandscapeImagePhone, CustomTitle, CustomBarButtonItemDesign {

    let tintColorStyle: ColorStyle = TestColor.first
    let imageStyle: ImageStyle = TestImage.first
    let landscapeImagePhoneStyle: ImageStyle = TestImage.second
    let titleStyle: TextStyle = TestText.first
    let design: (UIBarButtonItem) -> Void = { $0.width = 5 }

}

class CustomTabBarItem: UITabBarItem, CustomBadgeColor, CustomImage, CustomSelectedImage, CustomTitle, CustomTabBarItemDesign {

    let badgeColorStyle: ColorStyle = TestColor.first
    let imageStyle: ImageStyle = TestImage.first
    let landscapeImagePhoneStyle: ImageStyle = TestImage.second
    let selectedImageStyle: ImageStyle = TestImage.third
    let titleStyle: TextStyle = TestText.first
    let design: (UITabBarItem) -> Void = { $0.badgeValue = TestText.second }

}

class CustomView: UIView, CustomLayout, CustomTintColor, CustomBorderColor, CustomBackgroundColor, CustomViewDesign {

    let contentNib: UINib = UINib(nibName: "TestLayout", bundle: Bundle(for: CustomView.self))
    let tintColorStyle: ColorStyle = TestColor.first
    let borderColorStyle: ColorStyle = TestColor.second
    let backgroundColorStyle: ColorStyle = TestColor.third
    let design: (UIView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomActivityIndicatorView: UIActivityIndicatorView, CustomColor, CustomActivityIndicatorViewDesign {

    let colorStyle: ColorStyle = TestColor.first
    let design: (UIActivityIndicatorView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomButton: UIButton, CustomTitleFont, CustomTitleColor, CustomTitleShadowColor, CustomImage, CustomBackgroundImage, CustomTitle, CustomTitleTextAlignment, CustomButtonDesign {

    let titleFontStyle: FontStyle = TestFont.first
    let titleColorStyle: ColorStyle = TestColor.first
    let titleShadowColorStyle: ColorStyle = TestColor.second
    let imageStyle: ImageStyle = TestImage.first
    let backgroundImageStyle: ImageStyle = TestImage.second
    let titleStyle: TextStyle = TestText.first
    let titleTextAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    let design: (UIButton) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomSegmentedControl: UISegmentedControl, CustomSegmentTitles, CustomSegmentedControlDesign {

    let segmentTitleStyles: [TextStyle] = [TestText.first, TestText.second]
    let design: (UISegmentedControl) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomSlider: UISlider, CustomMinimumTrackTintColor, CustomMaximumTrackTintColor, CustomThumbTintColor, CustomMinimumValueImage, CustomMaximumValueImage, CustomSliderDesign {

    let minimumTrackTintColorStyle: ColorStyle = TestColor.first
    let maximumTrackTintColorStyle: ColorStyle = TestColor.second
    let thumbTintColorStyle: ColorStyle = TestColor.third
    let minimumValueImageStyle: ImageStyle = TestImage.first
    let maximumValueImageStyle: ImageStyle = TestImage.second
    let design: (UISlider) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomImageSlider: UISlider, CustomMinimumTrackImage, CustomMaximumTrackImage, CustomThumbImage, CustomSliderDesign {

    let minimumTrackImageStyle: ImageStyle = TestImage.first
    let maximumTrackImageStyle: ImageStyle = TestImage.second
    let thumbImageStyle: ImageStyle = TestImage.third
    let design: (UISlider) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomStepper: UIStepper, CustomBackgroundImage, CustomDecrementImage, CustomIncrementImage, CustomStepperDesign {

    let backgroundImageStyle: ImageStyle = TestImage.first
    let decrementImageStyle: ImageStyle = TestImage.second
    let incrementImageStyle: ImageStyle = TestImage.third
    let design: (UIStepper) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomSwitch: UISwitch, CustomOnTintColor, CustomThumbTintColor, CustomOnImage, CustomOffImage, CustomSwitchDesign {

    let onTintColorStyle: ColorStyle = TestColor.first
    let thumbTintColorStyle: ColorStyle = TestColor.second
    let onImageStyle: ImageStyle = TestImage.first
    let offImageStyle: ImageStyle = TestImage.second
    let design: (UISwitch) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomTextField: UITextField, CustomFont, CustomTextColor, CustomText, CustomPlaceholder, CustomTextAlignment, CustomTextFieldDesign {

    let fontStyle: FontStyle = TestFont.first
    let textColorStyle: ColorStyle = TestColor.first
    let textStyle: TextStyle = TestText.first
    let placeholderStyle: TextStyle = TestText.second
    let textAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    let design: (UITextField) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomImageView: UIImageView, CustomImage, CustomHighlightedImage, CustomImageViewDesign {

    let imageStyle: ImageStyle = TestImage.first
    let highlightedImageStyle: ImageStyle = TestImage.second
    let design: (UIImageView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomLabel: UILabel, CustomFont, CustomTextColor, CustomShadowColor, CustomText, CustomTextAlignment, CustomLabelDesign {

    let fontStyle: FontStyle = TestFont.first
    let textColorStyle: ColorStyle = TestColor.first
    let shadowColorStyle: ColorStyle = TestColor.second
    let textStyle: TextStyle = TestText.first
    let textAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    let design: (UILabel) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomNavigationBar: UINavigationBar, CustomBarTintColor, CustomShadowImage, CustomNavigationBarDesign {

    let barTintColorStyle: ColorStyle = TestColor.first
    let shadowImageStyle: ImageStyle = TestImage.first
    let design: (UINavigationBar) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomProgressView: UIProgressView, CustomProgressTintColor, CustomTrackTintColor, CustomProgressViewDesign {

    let progressTintColorStyle: ColorStyle = TestColor.first
    let trackTintColorStyle: ColorStyle = TestColor.second
    let design: (UIProgressView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomImageProgressView: UIProgressView, CustomProgressImage, CustomTrackImage, CustomProgressViewDesign {

    let progressImageStyle: ImageStyle = TestImage.first
    let trackImageStyle: ImageStyle = TestImage.second
    let design: (UIProgressView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomTableView: UITableView, CustomSeparatorColor, CustomSectionIndexColor, CustomSectionIndexBackgroundColor, CustomSectionIndexTrackingBackgroundColor, CustomTableViewDesign {

    let separatorColorStyle: ColorStyle = TestColor.first
    let sectionIndexColorStyle: ColorStyle = TestColor.second
    let sectionIndexBackgroundColorStyle: ColorStyle = TestColor.third
    let sectionIndexTrackingBackgroundColorStyle: ColorStyle = TestColor.fourth
    let design: (UITableView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomTextView: UITextView, CustomFont, CustomTextColor, CustomText, CustomTextAlignment, CustomTextViewDesign {

    let fontStyle: FontStyle = TestFont.first
    let textColorStyle: ColorStyle = TestColor.first
    let textStyle: TextStyle = TestText.first
    let textAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    let design: (UITextView) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomSearchBar: UISearchBar, CustomBarTintColor, CustomBackgroundImage, CustomSearchFieldBackgroundImage, CustomScopeBarButtonBackgroundImage, CustomText, CustomPlaceholder, CustomPrompt, CustomScopeButtonTitles, CustomSearchBarDesign {

    let barTintColorStyle: ColorStyle = TestColor.first
    let backgroundImageStyle: ImageStyle = TestImage.first
    let searchFieldBackgroundImageStyle: ImageStyle = TestImage.second
    let scopeBarButtonBackgroundImageStyle: ImageStyle = TestImage.third
    let textStyle: TextStyle = TestText.first
    let placeholderStyle: TextStyle = TestText.second
    let promptStyle: TextStyle = TestText.third
    let scopeButtonTitleStyles: [TextStyle] = [TestText.fourth, TestText.fifth]
    let design: (UISearchBar) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomTabBar: UITabBar, CustomBarTintColor, CustomUnselectedItemTintColor, CustomShadowImage, CustomBackgroundImage, CustomTabBarDesign {

    let barTintColorStyle: ColorStyle = TestColor.first
    let unselectedItemTintColorStyle: ColorStyle = TestColor.second
    let shadowImageStyle: ImageStyle = TestImage.first
    let backgroundImageStyle: ImageStyle = TestImage.second
    let design: (UITabBar) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomToolbar: UIToolbar, CustomBarTintColor, CustomToolbarDesign {

    let barTintColorStyle: ColorStyle = TestColor.first
    let design: (UIToolbar) -> Void = { $0.layer.cornerRadius = 5 }

}

class CustomizingViewsTests: XCTestCase {
    
    func testBarButtonItem() {
        let barButtonItem = CustomBarButtonItem()
        barButtonItem.refresh()
        XCTAssertEqual(barButtonItem.tintColor, TestColor.first)
        XCTAssertEqual(barButtonItem.image, TestImage.first)
        XCTAssertEqual(barButtonItem.landscapeImagePhone, TestImage.second)
        XCTAssertEqual(barButtonItem.title, TestText.first)
        XCTAssertEqual(barButtonItem.width, 5)
    }
    
    func testTabBarItem() {
        let tabBarItem = CustomTabBarItem()
        tabBarItem.refresh()
        if #available(iOS 10.0, *) {
            XCTAssertEqual(tabBarItem.badgeColor, TestColor.first)
        }
        XCTAssertEqual(tabBarItem.image, TestImage.first)
        XCTAssertNotNil(tabBarItem.selectedImage) // Image is altered
        XCTAssertEqual(tabBarItem.title, TestText.first)
        XCTAssertEqual(tabBarItem.badgeValue, TestText.second)
    }
    
    func testView() {
        let view = CustomView()
        view.refresh()
        XCTAssertNotNil(view.subviews.first)
        XCTAssertEqual(view.tintColor, TestColor.first)
        XCTAssertEqual(view.layer.borderColor, TestColor.second.cgColor)
        XCTAssertEqual(view.backgroundColor, TestColor.third)
        XCTAssertEqual(view.layer.cornerRadius, 5)
    }
    
    func testActivityIndicatorView() {
        let activityIndicatorView = CustomActivityIndicatorView()
        activityIndicatorView.refresh()
        XCTAssertEqual(activityIndicatorView.color, TestColor.first)
        XCTAssertEqual(activityIndicatorView.layer.cornerRadius, 5)
    }
    
    func testButton() {
        let button = CustomButton()
        button.refresh()
        XCTAssertEqual(button.titleLabel?.font, TestFont.first)
        XCTAssertEqual(button.currentTitleColor, TestColor.first)
        XCTAssertEqual(button.currentTitleShadowColor, TestColor.second)
        XCTAssertEqual(button.currentImage, TestImage.first)
        XCTAssertEqual(button.currentBackgroundImage, TestImage.second)
        XCTAssertEqual(button.currentTitle, TestText.first)
        XCTAssertEqual(button.titleLabel?.textAlignment, TestTextAlignment.first)
        XCTAssertEqual(button.layer.cornerRadius, 5)
    }

    func testSegmentedControl() {
        let segmentedControl = CustomSegmentedControl(items: ["", "", ""])
        segmentedControl.refresh()
        XCTAssertEqual(segmentedControl.titleForSegment(at: 0), TestText.first)
        XCTAssertEqual(segmentedControl.titleForSegment(at: 1), TestText.second)
        XCTAssertEqual(segmentedControl.titleForSegment(at: 2), "")
        XCTAssertEqual(segmentedControl.layer.cornerRadius, 5)
    }

    func testEmptySegmentedControl() {
        let segmentedControl = CustomSegmentedControl()
        segmentedControl.refresh()
    }

    func testSlider() {
        let slider = CustomSlider()
        slider.refresh()
        XCTAssertEqual(slider.minimumTrackTintColor, TestColor.first)
        XCTAssertEqual(slider.maximumTrackTintColor, TestColor.second)
        XCTAssertEqual(slider.thumbTintColor, TestColor.third)
        XCTAssertEqual(slider.minimumValueImage, TestImage.first)
        XCTAssertEqual(slider.maximumValueImage, TestImage.second)
        XCTAssertEqual(slider.layer.cornerRadius, 5)
    }
    
    func testImageSlider() {
        let imageSlider = CustomImageSlider()
        imageSlider.refresh()
        XCTAssertEqual(imageSlider.currentMinimumTrackImage, TestImage.first)
        XCTAssertEqual(imageSlider.currentMaximumTrackImage, TestImage.second)
        XCTAssertEqual(imageSlider.currentThumbImage, TestImage.third)
        XCTAssertEqual(imageSlider.layer.cornerRadius, 5)
    }
    
    func testStepper() {
        let stepper = CustomStepper()
        stepper.refresh()
        XCTAssertNotNil(stepper.backgroundImage(for: .normal)) // Image is 3-way stretched
        XCTAssertEqual(stepper.decrementImage(for: .normal), TestImage.second)
        XCTAssertEqual(stepper.incrementImage(for: .normal), TestImage.third)
        XCTAssertEqual(stepper.layer.cornerRadius, 5)
    }
    
    func testSwitch() {
        let control = CustomSwitch()
        control.refresh()
        XCTAssertEqual(control.onTintColor, TestColor.first)
        XCTAssertEqual(control.thumbTintColor, TestColor.second)
        XCTAssertEqual(control.onImage, TestImage.first)
        XCTAssertEqual(control.offImage, TestImage.second)
        XCTAssertEqual(control.layer.cornerRadius, 5)
    }
    
    func testTextField() {
        let textField = CustomTextField()
        textField.refresh()
        XCTAssertEqual(textField.font, TestFont.first)
        XCTAssertEqual(textField.textColor, TestColor.first)
        XCTAssertEqual(textField.text, TestText.first)
        XCTAssertEqual(textField.placeholder, TestText.second)
        XCTAssertEqual(textField.textAlignment, TestTextAlignment.first)
        XCTAssertEqual(textField.layer.cornerRadius, 5)
    }
    
    func testImageView() {
        let imageView = CustomImageView()
        imageView.refresh()
        XCTAssertEqual(imageView.image, TestImage.first)
        XCTAssertEqual(imageView.highlightedImage, TestImage.second)
        XCTAssertEqual(imageView.layer.cornerRadius, 5)
    }
    
    func testLabel() {
        let label = CustomLabel()
        label.refresh()
        XCTAssertEqual(label.font, TestFont.first)
        XCTAssertEqual(label.textColor, TestColor.first)
        XCTAssertEqual(label.shadowColor, TestColor.second)
        XCTAssertEqual(label.text, TestText.first)
        XCTAssertEqual(label.textAlignment, TestTextAlignment.first)
        XCTAssertEqual(label.layer.cornerRadius, 5)
    }
    
    func testNavigationBar() {
        let navigationBar = CustomNavigationBar()
        navigationBar.refresh()
        XCTAssertEqual(navigationBar.barTintColor, TestColor.first)
        XCTAssertNotNil(navigationBar.shadowImage) // Image is modified
        XCTAssertEqual(navigationBar.layer.cornerRadius, 5)
    }
    
    func testProgressView() {
        let progressView = CustomProgressView()
        progressView.refresh()
        XCTAssertEqual(progressView.progressTintColor, TestColor.first)
        XCTAssertEqual(progressView.trackTintColor, TestColor.second)
        XCTAssertEqual(progressView.layer.cornerRadius, 5)
    }
    
    func testImageProgressView() {
        let imageProgressView = CustomImageProgressView()
        imageProgressView.refresh()
        XCTAssertEqual(imageProgressView.progressImage, TestImage.first)
        XCTAssertEqual(imageProgressView.trackImage, TestImage.second)
        XCTAssertEqual(imageProgressView.layer.cornerRadius, 5)
    }
    
    func testTableView() {
        let tableView = CustomTableView()
        tableView.refresh()
        XCTAssertEqual(tableView.separatorColor, TestColor.first)
        XCTAssertEqual(tableView.sectionIndexColor, TestColor.second)
        XCTAssertEqual(tableView.sectionIndexBackgroundColor, TestColor.third)
        XCTAssertEqual(tableView.sectionIndexTrackingBackgroundColor, TestColor.fourth)
        XCTAssertEqual(tableView.layer.cornerRadius, 5)
    }
    
    func testTextView() {
        let textView = CustomTextView()
        textView.refresh()
        XCTAssertEqual(textView.font, TestFont.first)
        XCTAssertEqual(textView.textColor, TestColor.first)
        XCTAssertEqual(textView.text, TestText.first)
        XCTAssertEqual(textView.textAlignment, TestTextAlignment.first)
        XCTAssertEqual(textView.layer.cornerRadius, 5)
    }
    
    func testSearchBar() {
        let searchBar = CustomSearchBar()
        searchBar.refresh()
        XCTAssertEqual(searchBar.barTintColor, TestColor.first)
        XCTAssertNotNil(searchBar.backgroundImage) // Image is scaled or tiled
        XCTAssertEqual(searchBar.searchFieldBackgroundImage(for: .normal), TestImage.second)
        XCTAssertEqual(searchBar.scopeBarButtonBackgroundImage(for: .normal), TestImage.third)
        XCTAssertEqual(searchBar.text, TestText.first)
        XCTAssertEqual(searchBar.placeholder, TestText.second)
        XCTAssertEqual(searchBar.prompt, TestText.third)
        XCTAssertEqual(searchBar.scopeButtonTitles!, [TestText.fourth, TestText.fifth])
        XCTAssertEqual(searchBar.layer.cornerRadius, 5)
    }

    func testTabBar() {
        let tabBar = CustomTabBar()
        tabBar.refresh()
        XCTAssertEqual(tabBar.barTintColor, TestColor.first)
        if #available(iOS 10.0, *) {
            XCTAssertEqual(tabBar.unselectedItemTintColor, TestColor.second)
        }
        XCTAssertNotNil(tabBar.shadowImage) // Image is modified
        XCTAssertNotNil(tabBar.backgroundImage) // Image is tiled to fit
        XCTAssertEqual(tabBar.layer.cornerRadius, 5)
    }
    
    func testToolbar() {
        let toolbar = CustomToolbar()
        toolbar.refresh()
        XCTAssertEqual(toolbar.barTintColor, TestColor.first)
        XCTAssertEqual(toolbar.layer.cornerRadius, 5)
    }
    
}
