//
//  CustomizingViewsTests.swift
//  Tests
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomBarButtonItem: UIBarButtonItem, CustomTintColor, CustomImage, CustomLandscapeImagePhone, CustomTitle {
    
    let tintColorStyle: ColorStyle = TestColor.first
    let imageStyle: ImageStyle = TestImage.first
    let landscapeImagePhoneStyle: ImageStyle = TestImage.second
    let titleStyle: TextStyle = TestText.first
    
}

class CustomTabBarItem: UITabBarItem, CustomBadgeColor, CustomImage, CustomSelectedImage, CustomTitle {
    
    let badgeColorStyle: ColorStyle = TestColor.first
    let imageStyle: ImageStyle = TestImage.first
    let landscapeImagePhoneStyle: ImageStyle = TestImage.second
    let selectedImageStyle: ImageStyle = TestImage.third
    let titleStyle: TextStyle = TestText.first
    
}

class CustomView: UIView, CustomLayout, CustomDesign, CustomTintColor, CustomBorderColor, CustomBackgroundColor {
    
    let contentNib: UINib = UINib(nibName: "TestLayout", bundle: Bundle(for: CustomView.self))
    let design: (DesignCustomizable) -> Void = { guard let view = $0 as? UIView else { return }; view.layer.borderWidth = 3 }
    let tintColorStyle: ColorStyle = TestColor.first
    let borderColorStyle: ColorStyle = TestColor.second
    let backgroundColorStyle: ColorStyle = TestColor.third
    
}

class CustomActivityIndicatorView: UIActivityIndicatorView, CustomColor {
    
    let colorStyle: ColorStyle = TestColor.first
    
}

class CustomButton: UIButton, CustomTitleFont, CustomTitleColor, CustomTitleShadowColor, CustomImage, CustomBackgroundImage, CustomTitle, CustomTitleTextAlignment {
    
    let titleFontStyle: FontStyle = TestFont.first
    let titleColorStyle: ColorStyle = TestColor.first
    let titleShadowColorStyle: ColorStyle = TestColor.second
    let imageStyle: ImageStyle = TestImage.first
    let backgroundImageStyle: ImageStyle = TestImage.second
    let titleStyle: TextStyle = TestText.first
    let titleTextAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first

}

class CustomSegmentedControl: UISegmentedControl, CustomSegmentTitles {

    let segmentTitleStyles: [TextStyle] = [TestText.first, TestText.second]

}

class CustomSlider: UISlider, CustomMinimumTrackTintColor, CustomMaximumTrackTintColor, CustomThumbTintColor, CustomMinimumValueImage, CustomMaximumValueImage {
    
    let minimumTrackTintColorStyle: ColorStyle = TestColor.first
    let maximumTrackTintColorStyle: ColorStyle = TestColor.second
    let thumbTintColorStyle: ColorStyle = TestColor.third
    let minimumValueImageStyle: ImageStyle = TestImage.first
    let maximumValueImageStyle: ImageStyle = TestImage.second
    
}

class CustomImageSlider: UISlider, CustomMinimumTrackImage, CustomMaximumTrackImage, CustomThumbImage {
    
    let minimumTrackImageStyle: ImageStyle = TestImage.first
    let maximumTrackImageStyle: ImageStyle = TestImage.second
    let thumbImageStyle: ImageStyle = TestImage.third
    
}

class CustomStepper: UIStepper, CustomBackgroundImage, CustomDecrementImage, CustomIncrementImage {
    
    let backgroundImageStyle: ImageStyle = TestImage.first
    let decrementImageStyle: ImageStyle = TestImage.second
    let incrementImageStyle: ImageStyle = TestImage.third
    
}

class CustomSwitch: UISwitch, CustomOnTintColor, CustomThumbTintColor, CustomOnImage, CustomOffImage {
    
    let onTintColorStyle: ColorStyle = TestColor.first
    let thumbTintColorStyle: ColorStyle = TestColor.second
    let onImageStyle: ImageStyle = TestImage.first
    let offImageStyle: ImageStyle = TestImage.second
    
}

class CustomTextField: UITextField, CustomFont, CustomTextColor, CustomText, CustomPlaceholder, CustomTextAlignment {
    
    let fontStyle: FontStyle = TestFont.first
    let textColorStyle: ColorStyle = TestColor.first
    let textStyle: TextStyle = TestText.first
    let placeholderStyle: TextStyle = TestText.second
    let textAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    
}

class CustomImageView: UIImageView, CustomImage, CustomHighlightedImage {
    
    let imageStyle: ImageStyle = TestImage.first
    let highlightedImageStyle: ImageStyle = TestImage.second
    
}

class CustomLabel: UILabel, CustomFont, CustomTextColor, CustomShadowColor, CustomText, CustomTextAlignment {
    
    let fontStyle: FontStyle = TestFont.first
    let textColorStyle: ColorStyle = TestColor.first
    let shadowColorStyle: ColorStyle = TestColor.second
    let textStyle: TextStyle = TestText.first
    let textAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    
}

class CustomNavigationBar: UINavigationBar, CustomBarTintColor, CustomShadowImage {
    
    let barTintColorStyle: ColorStyle = TestColor.first
    let shadowImageStyle: ImageStyle = TestImage.first
    
}

class CustomProgressView: UIProgressView, CustomProgressTintColor, CustomTrackTintColor {
    
    let progressTintColorStyle: ColorStyle = TestColor.first
    let trackTintColorStyle: ColorStyle = TestColor.second
    
}

class CustomImageProgressView: UIProgressView, CustomProgressImage, CustomTrackImage {
    
    let progressImageStyle: ImageStyle = TestImage.first
    let trackImageStyle: ImageStyle = TestImage.second
    
}

class CustomTableView: UITableView, CustomSeparatorColor, CustomSectionIndexColor, CustomSectionIndexBackgroundColor, CustomSectionIndexTrackingBackgroundColor {
    
    let separatorColorStyle: ColorStyle = TestColor.first
    let sectionIndexColorStyle: ColorStyle = TestColor.second
    let sectionIndexBackgroundColorStyle: ColorStyle = TestColor.third
    let sectionIndexTrackingBackgroundColorStyle: ColorStyle = TestColor.fourth
    
}

class CustomTextView: UITextView, CustomFont, CustomTextColor, CustomText, CustomTextAlignment {
    
    let fontStyle: FontStyle = TestFont.first
    let textColorStyle: ColorStyle = TestColor.first
    let textStyle: TextStyle = TestText.first
    let textAlignmentStyle: TextAlignmentStyle = TestTextAlignment.first
    
}

class CustomSearchBar: UISearchBar, CustomBarTintColor, CustomBackgroundImage, CustomSearchFieldBackgroundImage, CustomScopeBarButtonBackgroundImage, CustomText, CustomPlaceholder, CustomPrompt, CustomScopeButtonTitles {
    
    let barTintColorStyle: ColorStyle = TestColor.first
    let backgroundImageStyle: ImageStyle = TestImage.first
    let searchFieldBackgroundImageStyle: ImageStyle = TestImage.second
    let scopeBarButtonBackgroundImageStyle: ImageStyle = TestImage.third
    let textStyle: TextStyle = TestText.first
    let placeholderStyle: TextStyle = TestText.second
    let promptStyle: TextStyle = TestText.third
    let scopeButtonTitleStyles: [TextStyle] = [TestText.fourth, TestText.fifth]

}

class CustomTabBar: UITabBar, CustomBarTintColor, CustomUnselectedItemTintColor, CustomShadowImage, CustomBackgroundImage {
    
    let barTintColorStyle: ColorStyle = TestColor.first
    let unselectedItemTintColorStyle: ColorStyle = TestColor.second
    let shadowImageStyle: ImageStyle = TestImage.first
    let backgroundImageStyle: ImageStyle = TestImage.second
    
}

class CustomToolbar: UIToolbar, CustomBarTintColor {
    
    let barTintColorStyle: ColorStyle = TestColor.first
    
}

class CustomizingViewsTests: XCTestCase {
    
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
        XCTAssertEqual(view.layer.borderWidth, 3)
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
        XCTAssertEqual(button.titleLabel?.font, TestFont.first)
        XCTAssertEqual(button.currentTitleColor, TestColor.first)
        XCTAssertEqual(button.currentTitleShadowColor, TestColor.second)
        XCTAssertEqual(button.currentImage, TestImage.first)
        XCTAssertEqual(button.currentBackgroundImage, TestImage.second)
        XCTAssertEqual(button.currentTitle, TestText.first)
        XCTAssertEqual(button.titleLabel?.textAlignment, TestTextAlignment.first)
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
        XCTAssertEqual(textField.textAlignment, TestTextAlignment.first)
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
        XCTAssertEqual(label.textAlignment, TestTextAlignment.first)
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
        XCTAssertEqual(textView.textAlignment, TestTextAlignment.first)
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
