//
//  RefreshingTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomLayoutTests: XCTestCase {
    
    func testBarButtonItem() {
        let barButtonItem = CustomBarButtonItem()
        barButtonItem.refresh()
        XCTAssertEqual(barButtonItem.tintColor, TestColor.first)
        XCTAssertEqual(barButtonItem.image, TestImage.first)
        XCTAssertEqual(barButtonItem.landscapeImagePhone, TestImage.second)
    }
    
    func testTabBarItem() {
        let tabBarItem = CustomTabBarItem()
        tabBarItem.refresh()
        if #available(iOS 10.0, *) {
            XCTAssertEqual(tabBarItem.badgeColor, TestColor.first)
        }
        XCTAssertEqual(tabBarItem.image, TestImage.first)
        XCTAssertNotNil(tabBarItem.selectedImage) // Image is altered
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
    }
    
    func testSearchBar() {
        let searchBar = CustomSearchBar()
        searchBar.refresh()
        XCTAssertEqual(searchBar.barTintColor, TestColor.first)
        XCTAssertNotNil(searchBar.backgroundImage) // Image is scaled or tiled
        XCTAssertEqual(searchBar.searchFieldBackgroundImage(for: .normal), TestImage.second)
        XCTAssertEqual(searchBar.scopeBarButtonBackgroundImage(for: .normal), TestImage.third)
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
