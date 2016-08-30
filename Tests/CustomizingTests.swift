//
//  CustomizingTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomBarButtonItem: UIBarButtonItem, CustomTintColor, CustomImage, CustomLandscapeImagePhone, CustomTitle {
    
    var tintColorStyle: ColorStyle = TestColor.first
    var imageStyle: ImageStyle = TestImage.first
    var landscapeImagePhoneStyle: ImageStyle = TestImage.second
    var titleStyle: TextStyle = TestText.first
    
}

class CustomTabBarItem: UITabBarItem, CustomBadgeColor, CustomImage, CustomSelectedImage, CustomTitle {
    
    var badgeColorStyle: ColorStyle = TestColor.first
    var imageStyle: ImageStyle = TestImage.first
    var landscapeImagePhoneStyle: ImageStyle = TestImage.second
    var selectedImageStyle: ImageStyle = TestImage.third
    var titleStyle: TextStyle = TestText.first
    
}

class CustomView: UIView, CustomLayout, CustomTintColor, CustomBorderColor, CustomBackgroundColor {
    
    var contentNib: UINib = UINib(nibName: "TestLayout", bundle: Bundle(for: CustomView.self))
    var tintColorStyle: ColorStyle = TestColor.first
    var borderColorStyle: ColorStyle = TestColor.second
    var backgroundColorStyle: ColorStyle = TestColor.third
    
}

class CustomActivityIndicatorView: UIActivityIndicatorView, CustomColor {
    
    var colorStyle: ColorStyle = TestColor.first
    
}

class CustomButton: UIButton, CustomTitleColor, CustomTitleShadowColor, CustomImage, CustomBackgroundImage, CustomTitle {
    
    var titleColorStyle: ColorStyle = TestColor.first
    var titleShadowColorStyle: ColorStyle = TestColor.second
    var imageStyle: ImageStyle = TestImage.first
    var backgroundImageStyle: ImageStyle = TestImage.second
    var titleStyle: TextStyle = TestText.first

}

class CustomSegmentedControl: UISegmentedControl, CustomSegmentTitles {

    var segmentTitleStyles: [TextStyle] = [TestText.first, TestText.second]

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

class CustomTextField: UITextField, CustomFont, CustomTextColor, CustomText, CustomPlaceholder {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    var textStyle: TextStyle = TestText.first
    var placeholderStyle: TextStyle = TestText.second
    
}

class CustomImageView: UIImageView, CustomImage, CustomHighlightedImage {
    
    var imageStyle: ImageStyle = TestImage.first
    var highlightedImageStyle: ImageStyle = TestImage.second
    
}

class CustomLabel: UILabel, CustomFont, CustomTextColor, CustomShadowColor, CustomText {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    var shadowColorStyle: ColorStyle = TestColor.second
    var textStyle: TextStyle = TestText.first
    
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

class CustomTextView: UITextView, CustomFont, CustomTextColor, CustomText {
    
    var fontStyle: FontStyle = TestFont.first
    var textColorStyle: ColorStyle = TestColor.first
    var textStyle: TextStyle = TestText.first
    
}

class CustomSearchBar: UISearchBar, CustomBarTintColor, CustomBackgroundImage, CustomSearchFieldBackgroundImage, CustomScopeBarButtonBackgroundImage, CustomText, CustomPlaceholder, CustomPrompt, CustomScopeButtonTitles {
    
    var barTintColorStyle: ColorStyle = TestColor.first
    var backgroundImageStyle: ImageStyle = TestImage.first
    var searchFieldBackgroundImageStyle: ImageStyle = TestImage.second
    var scopeBarButtonBackgroundImageStyle: ImageStyle = TestImage.third
    var textStyle: TextStyle = TestText.first
    var placeholderStyle: TextStyle = TestText.second
    var promptStyle: TextStyle = TestText.third
    var scopeButtonTitleStyles: [TextStyle] = [TestText.fourth, TestText.fifth]

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

class CustomizingTests: XCTestCase {
    
    func testBarButtonItem() {
        let barButtonItem = CustomBarButtonItem()
        barButtonItem.refresh()
        XCTAssertEqual(barButtonItem.tintColor, TestColor.first)
        XCTAssertEqual(barButtonItem.image, TestImage.first)
        XCTAssertEqual(barButtonItem.landscapeImagePhone, TestImage.second)
        XCTAssertEqual(barButtonItem.title, TestText.first)
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
    }
    
    func testView() {
        let view = CustomView()
        view.refresh()
        XCTAssertNotNil(view.subviews.first)
        XCTAssertEqual(view.tintColor, TestColor.first)
        XCTAssertEqual(view.layer.borderColor, TestColor.second.cgColor)
        XCTAssertEqual(view.backgroundColor, TestColor.third)
    }
    
    func testActivityIndicatorView() {
        let activityIndicatorView = CustomActivityIndicatorView()
        activityIndicatorView.refresh()
        XCTAssertEqual(activityIndicatorView.color, TestColor.first)
    }
    
    func testButton() {
        let button = CustomButton()
        button.refresh()
        XCTAssertEqual(button.currentTitleColor, TestColor.first)
        XCTAssertEqual(button.currentTitleShadowColor, TestColor.second)
        XCTAssertEqual(button.currentImage, TestImage.first)
        XCTAssertEqual(button.currentBackgroundImage, TestImage.second)
        XCTAssertEqual(button.currentTitle, TestText.first)
    }

    func testSegmentedControl() {
        let segmentedControl = CustomSegmentedControl(items: ["", "", ""])
        segmentedControl.refresh()
        XCTAssertEqual(segmentedControl.titleForSegment(at: 0), TestText.first)
        XCTAssertEqual(segmentedControl.titleForSegment(at: 1), TestText.second)
        XCTAssertEqual(segmentedControl.titleForSegment(at: 2), "")
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
    }
    
    func testImageSlider() {
        let imageSlider = CustomImageSlider()
        imageSlider.refresh()
        XCTAssertEqual(imageSlider.currentMinimumTrackImage, TestImage.first)
        XCTAssertEqual(imageSlider.currentMaximumTrackImage, TestImage.second)
        XCTAssertEqual(imageSlider.currentThumbImage, TestImage.third)
    }
    
    func testStepper() {
        let stepper = CustomStepper()
        stepper.refresh()
        XCTAssertNotNil(stepper.backgroundImage(for: .normal)) // Image is 3-way stretched
        XCTAssertEqual(stepper.decrementImage(for: .normal), TestImage.second)
        XCTAssertEqual(stepper.incrementImage(for: .normal), TestImage.third)
    }
    
    func testSwitch() {
        let control = CustomSwitch()
        control.refresh()
        XCTAssertEqual(control.onTintColor, TestColor.first)
        XCTAssertEqual(control.thumbTintColor, TestColor.second)
        XCTAssertEqual(control.onImage, TestImage.first)
        XCTAssertEqual(control.offImage, TestImage.second)
    }
    
    func testTextField() {
        let textField = CustomTextField()
        textField.refresh()
        XCTAssertEqual(textField.font, TestFont.first)
        XCTAssertEqual(textField.textColor, TestColor.first)
        XCTAssertEqual(textField.text, TestText.first)
        XCTAssertEqual(textField.placeholder, TestText.second)
    }
    
    func testImageView() {
        let imageView = CustomImageView()
        imageView.refresh()
        XCTAssertEqual(imageView.image, TestImage.first)
        XCTAssertEqual(imageView.highlightedImage, TestImage.second)
    }
    
    func testLabel() {
        let label = CustomLabel()
        label.refresh()
        XCTAssertEqual(label.font, TestFont.first)
        XCTAssertEqual(label.textColor, TestColor.first)
        XCTAssertEqual(label.shadowColor, TestColor.second)
        XCTAssertEqual(label.text, TestText.first)
    }
    
    func testNavigationBar() {
        let navigationBar = CustomNavigationBar()
        navigationBar.refresh()
        XCTAssertEqual(navigationBar.barTintColor, TestColor.first)
        XCTAssertNotNil(navigationBar.shadowImage) // Image is modified
    }
    
    func testProgressView() {
        let progressView = CustomProgressView()
        progressView.refresh()
        XCTAssertEqual(progressView.progressTintColor, TestColor.first)
        XCTAssertEqual(progressView.trackTintColor, TestColor.second)
    }
    
    func testImageProgressView() {
        let imageProgressView = CustomImageProgressView()
        imageProgressView.refresh()
        XCTAssertEqual(imageProgressView.progressImage, TestImage.first)
        XCTAssertEqual(imageProgressView.trackImage, TestImage.second)
    }
    
    func testTableView() {
        let tableView = CustomTableView()
        tableView.refresh()
        XCTAssertEqual(tableView.separatorColor, TestColor.first)
        XCTAssertEqual(tableView.sectionIndexColor, TestColor.second)
        XCTAssertEqual(tableView.sectionIndexBackgroundColor, TestColor.third)
        XCTAssertEqual(tableView.sectionIndexTrackingBackgroundColor, TestColor.fourth)
    }
    
    func testTextView() {
        let textView = CustomTextView()
        textView.refresh()
        XCTAssertEqual(textView.font, TestFont.first)
        XCTAssertEqual(textView.textColor, TestColor.first)
        XCTAssertEqual(textView.text, TestText.first)
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
    }
    
    func testToolbar() {
        let toolbar = CustomToolbar()
        toolbar.refresh()
        XCTAssertEqual(toolbar.barTintColor, TestColor.first)
    }
    
}
