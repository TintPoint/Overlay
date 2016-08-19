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
        XCTAssertEqual(barButtonItem.tintColor, TestColor.normal)
        XCTAssertEqual(barButtonItem.image, TestImage.normal)
        XCTAssertEqual(barButtonItem.landscapeImagePhone, TestImage.disabled)
    }
    
    func testTabBarItem() {
        let tabBarItem = CustomTabBarItem()
        tabBarItem.refresh()
        if #available(iOS 10.0, *) {
            XCTAssertEqual(tabBarItem.badgeColor, TestColor.normal)
        }
        XCTAssertEqual(tabBarItem.image, TestImage.normal)
        XCTAssertNotNil(tabBarItem.selectedImage) // Image is altered
    }
    
    func testView() {
        let view = CustomView()
        view.refresh()
        XCTAssertNotNil(view.subviews.first)
        XCTAssertEqual(view.tintColor, TestColor.normal)
        XCTAssertEqual(view.layer.borderColor, TestColor.disabled.cgColor)
        XCTAssertEqual(view.backgroundColor, TestColor.selected)
    }
    
    func testActivityIndicatorView() {
        let activityIndicatorView = CustomActivityIndicatorView()
        activityIndicatorView.refresh()
        XCTAssertEqual(activityIndicatorView.color, TestColor.normal)
    }
    
    func testButton() {
        let button = CustomButton()
        button.refresh()
        XCTAssertEqual(button.currentTitleColor, TestColor.normal)
        XCTAssertEqual(button.currentTitleShadowColor, TestColor.disabled)
        XCTAssertEqual(button.currentImage, TestImage.normal)
        XCTAssertEqual(button.currentBackgroundImage, TestImage.disabled)
    }
    
    func testSlider() {
        let slider = CustomSlider()
        slider.refresh()
        XCTAssertEqual(slider.minimumTrackTintColor, TestColor.normal)
        XCTAssertEqual(slider.maximumTrackTintColor, TestColor.disabled)
        XCTAssertEqual(slider.thumbTintColor, TestColor.selected)
        XCTAssertEqual(slider.minimumValueImage, TestImage.normal)
        XCTAssertEqual(slider.maximumValueImage, TestImage.disabled)
    }
    
    func testImageSlider() {
        let imageSlider = CustomImageSlider()
        imageSlider.refresh()
        XCTAssertEqual(imageSlider.currentMinimumTrackImage, TestImage.normal)
        XCTAssertEqual(imageSlider.currentMaximumTrackImage, TestImage.disabled)
        XCTAssertEqual(imageSlider.currentThumbImage, TestImage.selected)
    }
    
    func testStepper() {
        let stepper = CustomStepper()
        stepper.refresh()
        XCTAssertNotNil(stepper.backgroundImage(for: .normal)) // Image is 3-way stretched
        XCTAssertEqual(stepper.decrementImage(for: .normal), TestImage.disabled)
        XCTAssertEqual(stepper.incrementImage(for: .normal), TestImage.selected)
    }
    
    func testSwitch() {
        let control = CustomSwitch()
        control.refresh()
        XCTAssertEqual(control.onTintColor, TestColor.normal)
        XCTAssertEqual(control.thumbTintColor, TestColor.disabled)
        XCTAssertEqual(control.onImage, TestImage.normal)
        XCTAssertEqual(control.offImage, TestImage.disabled)
    }
    
    func testTextField() {
        let textField = CustomTextField()
        textField.refresh()
        XCTAssertEqual(textField.font, TestFont.normal)
        XCTAssertEqual(textField.textColor, TestColor.normal)
    }
    
    func testImageView() {
        let imageView = CustomImageView()
        imageView.refresh()
        XCTAssertEqual(imageView.image, TestImage.normal)
        XCTAssertEqual(imageView.highlightedImage, TestImage.disabled)
    }
    
    func testLabel() {
        let label = CustomLabel()
        label.refresh()
        XCTAssertEqual(label.font, TestFont.normal)
        XCTAssertEqual(label.textColor, TestColor.normal)
        XCTAssertEqual(label.shadowColor, TestColor.disabled)
    }
    
    func testNavigationBar() {
        let navigationBar = CustomNavigationBar()
        navigationBar.refresh()
        XCTAssertEqual(navigationBar.barTintColor, TestColor.normal)
        XCTAssertNotNil(navigationBar.shadowImage) // Image is modified
    }
    
    func testProgressView() {
        let progressView = CustomProgressView()
        progressView.refresh()
        XCTAssertEqual(progressView.progressTintColor, TestColor.normal)
        XCTAssertEqual(progressView.trackTintColor, TestColor.disabled)
    }
    
    func testImageProgressView() {
        let imageProgressView = CustomImageProgressView()
        imageProgressView.refresh()
        XCTAssertEqual(imageProgressView.progressImage, TestImage.normal)
        XCTAssertEqual(imageProgressView.trackImage, TestImage.disabled)
    }
    
    func testTableView() {
        let tableView = CustomTableView()
        tableView.refresh()
        XCTAssertEqual(tableView.separatorColor, TestColor.normal)
        XCTAssertEqual(tableView.sectionIndexColor, TestColor.disabled)
        XCTAssertEqual(tableView.sectionIndexBackgroundColor, TestColor.selected)
        XCTAssertEqual(tableView.sectionIndexTrackingBackgroundColor, TestColor.highlighted)
    }
    
    func testTextView() {
        let textView = CustomTextView()
        textView.refresh()
        XCTAssertEqual(textView.font, TestFont.normal)
        XCTAssertEqual(textView.textColor, TestColor.normal)
    }
    
    func testSearchBar() {
        let searchBar = CustomSearchBar()
        searchBar.refresh()
        XCTAssertEqual(searchBar.barTintColor, TestColor.normal)
        XCTAssertNotNil(searchBar.backgroundImage) // Image is scaled or tiled
        XCTAssertEqual(searchBar.searchFieldBackgroundImage(for: .normal), TestImage.disabled)
        XCTAssertEqual(searchBar.scopeBarButtonBackgroundImage(for: .normal), TestImage.selected)
    }
    
    func testTabBar() {
        let tabBar = CustomTabBar()
        tabBar.refresh()
        XCTAssertEqual(tabBar.barTintColor, TestColor.normal)
        if #available(iOS 10.0, *) {
            XCTAssertEqual(tabBar.unselectedItemTintColor, TestColor.disabled)
        }
        XCTAssertNotNil(tabBar.shadowImage) // Image is modified
        XCTAssertNotNil(tabBar.backgroundImage) // Image is tiled to fit
    }
    
    func testToolbar() {
        let toolbar = CustomToolbar()
        toolbar.refresh()
        XCTAssertEqual(toolbar.barTintColor, TestColor.normal)
    }
    
}
