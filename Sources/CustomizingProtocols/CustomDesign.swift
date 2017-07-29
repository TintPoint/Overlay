//
//  CustomDesign.swift
//  Overlay
//
//  Created by Justin Jia on 11/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that its design will be customized using a closure.
public protocol CustomDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (Any) -> Void { get }

}

/// A protocol that describes an `UIActivityIndicatorView` that its design will be customized using a closure.
public protocol CustomActivityIndicatorViewDesign: ActivityIndicatorViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIActivityIndicatorView) -> Void { get }

}

/// A protocol that describes an `UIBarButtonItem` that its design will be customized using a closure.
public protocol CustomBarButtonItemDesign: BarButtonItemDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIBarButtonItem) -> Void { get }

}

/// A protocol that describes an `UIBarItem` that its design will be customized using a closure.
public protocol CustomBarItemDesign: BarItemDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIBarItem) -> Void { get }

}

/// A protocol that describes an `UIButton` that its design will be customized using a closure.
public protocol CustomButtonDesign: ButtonDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIButton) -> Void { get }

}

/// A protocol that describes an `UICollectionView` that its design will be customized using a closure.
public protocol CustomCollectionViewDesign: CollectionViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UICollectionView) -> Void { get }

}

/// A protocol that describes an `UIControl` that its design will be customized using a closure.
public protocol CustomControlDesign: ControlDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIControl) -> Void { get }

}

/// A protocol that describes an `UIDatePicker` that its design will be customized using a closure.
public protocol CustomDatePickerDesign: DatePickerDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIDatePicker) -> Void { get }

}

/// A protocol that describes an `UIImageView` that its design will be customized using a closure.
public protocol CustomImageViewDesign: ImageViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIImageView) -> Void { get }

}

/// A protocol that describes an `UILabel` that its design will be customized using a closure.
public protocol CustomLabelDesign: LabelDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UILabel) -> Void { get }

}

/// A protocol that describes an `UINavigationBar` that its design will be customized using a closure.
public protocol CustomNavigationBarDesign: NavigationBarDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UINavigationBar) -> Void { get }

}

/// A protocol that describes an `UIPageControl` that its design will be customized using a closure.
public protocol CustomPageControlDesign: PageControlDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIPageControl) -> Void { get }

}

/// A protocol that describes an `UIPickerView` that its design will be customized using a closure.
public protocol CustomPickerViewDesign: PickerViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIPickerView) -> Void { get }

}

/// A protocol that describes an `UIProgressView` that its design will be customized using a closure.
public protocol CustomProgressViewDesign: ProgressViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIProgressView) -> Void { get }

}

/// A protocol that describes an `UIScrollView` that its design will be customized using a closure.
public protocol CustomScrollViewDesign: ScrollViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIScrollView) -> Void { get }

}

/// A protocol that describes an `UISearchBar` that its design will be customized using a closure.
public protocol CustomSearchBarDesign: SearchBarDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISearchBar) -> Void { get }

}

/// A protocol that describes an `UISegmentedControl` that its design will be customized using a closure.
public protocol CustomSegmentedControlDesign: SegmentedControlDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISegmentedControl) -> Void { get }

}

/// A protocol that describes an `UISlider` that its design will be customized using a closure.
public protocol CustomSliderDesign: SliderDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISlider) -> Void { get }

}

/// A protocol that describes an `UIStackView` that its design will be customized using a closure.
public protocol CustomStackViewDesign: StackViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIStackView) -> Void { get }

}

/// A protocol that describes an `UIStepper` that its design will be customized using a closure.
public protocol CustomStepperDesign: StepperDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIStepper) -> Void { get }

}

/// A protocol that describes an `UISwitch` that its design will be customized using a closure.
public protocol CustomSwitchDesign: SwitchDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISwitch) -> Void { get }

}

/// A protocol that describes an `UITabBar` that its design will be customized using a closure.
public protocol CustomTabBarDesign: TabBarDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITabBar) -> Void { get }

}

/// A protocol that describes an `UITabBarItem` that its design will be customized using a closure.
public protocol CustomTabBarItemDesign: TabBarItemDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITabBarItem) -> Void { get }

}

/// A protocol that describes an `UITableView` that its design will be customized using a closure.
public protocol CustomTableViewDesign: TableViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITableView) -> Void { get }

}

/// A protocol that describes an `UITextField` that its design will be customized using a closure.
public protocol CustomTextFieldDesign: TextFieldDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITextField) -> Void { get }

}

/// A protocol that describes an `UITextView` that its design will be customized using a closure.
public protocol CustomTextViewDesign: TextViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITextView) -> Void { get }

}

/// A protocol that describes an `UIToolbar` that its design will be customized using a closure.
public protocol CustomToolbarDesign: ToolbarDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIToolbar) -> Void { get }

}

/// A protocol that describes an `UIView` that its design will be customized using a closure.
public protocol CustomViewDesign: ViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIView) -> Void { get }

}

/// A protocol that describes an `UIWebView` that its design will be customized using a closure.
public protocol CustomWebViewDesign: WebViewDesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIWebView) -> Void { get }

}

extension UIView: ViewDesignCustomizable {

    public func customizeViewDesign(using design: (UIView) -> Void) {
        design(self)
    }

}

extension UICollectionView: CollectionViewDesignCustomizable {

    public func customizeCollectionViewDesign(using design: (UICollectionView) -> Void) {
        design(self)
    }

}

extension UITableView: TableViewDesignCustomizable {

    public func customizeTableViewDesign(using design: (UITableView) -> Void) {
        design(self)
    }

}

extension UIStackView: StackViewDesignCustomizable {

    public func customizeStackViewDesign(using design: (UIStackView) -> Void) {
        design(self)
    }

}

extension UIScrollView: ScrollViewDesignCustomizable {

    public func customizeScrollViewDesign(using design: (UIScrollView) -> Void) {
        design(self)
    }

}

extension UIActivityIndicatorView: ActivityIndicatorViewDesignCustomizable {

    public func customizeActivityIndicatorViewDesign(using design: (UIActivityIndicatorView) -> Void) {
        design(self)
    }

}

extension UIImageView: ImageViewDesignCustomizable {

    public func customizeImageViewDesign(using design: (UIImageView) -> Void) {
        design(self)
    }

}

extension UIPickerView: PickerViewDesignCustomizable {

    public func customizePickerViewDesign(using design: (UIPickerView) -> Void) {
        design(self)
    }

}

extension UIProgressView: ProgressViewDesignCustomizable {

    public func customizeProgressViewDesign(using design: (UIProgressView) -> Void) {
        design(self)
    }

}

extension UIWebView: WebViewDesignCustomizable {

    public func customizeWebViewDesign(using design: (UIWebView) -> Void) {
        design(self)
    }

}

extension UIControl: ControlDesignCustomizable {

    public func customizeControlDesign(using design: (UIControl) -> Void) {
        design(self)
    }

}

extension UIButton: ButtonDesignCustomizable {

    public func customizeButtonDesign(using design: (UIButton) -> Void) {
        design(self)
    }

}

extension UIDatePicker: DatePickerDesignCustomizable {

    public func customizeDatePickerDesign(using design: (UIDatePicker) -> Void) {
        design(self)
    }

}

extension UIPageControl: PageControlDesignCustomizable {

    public func customizePageControlDesign(using design: (UIPageControl) -> Void) {
        design(self)
    }

}

extension UISegmentedControl: SegmentedControlDesignCustomizable {

    public func customizeSegmentedControlDesign(using design: (UISegmentedControl) -> Void) {
        design(self)
    }

}

extension UISlider: SliderDesignCustomizable {

    public func customizeSliderDesign(using design: (UISlider) -> Void) {
        design(self)
    }

}

extension UIStepper: StepperDesignCustomizable {

    public func customizeStepperDesign(using design: (UIStepper) -> Void) {
        design(self)
    }

}

extension UISwitch: SwitchDesignCustomizable {

    public func customizeSwitchDesign(using design: (UISwitch) -> Void) {
        design(self)
    }

}

extension UILabel: LabelDesignCustomizable {

    public func customizeLabelDesign(using design: (UILabel) -> Void) {
        design(self)
    }

}

extension UITextField: TextFieldDesignCustomizable {

    public func customizeTextFieldDesign(using design: (UITextField) -> Void) {
        design(self)
    }

}

extension UITextView: TextViewDesignCustomizable {

    public func customizeTextViewDesign(using design: (UITextView) -> Void) {
        design(self)
    }

}

extension UIBarItem: BarItemDesignCustomizable {

    public func customizeBarItemDesign(using design: (UIBarItem) -> Void) {
        design(self)
    }

}

extension UIBarButtonItem: BarButtonItemDesignCustomizable {

    public func customizeBarButtonItemDesign(using design: (UIBarButtonItem) -> Void) {
        design(self)
    }

}

extension UINavigationBar: NavigationBarDesignCustomizable {

    public func customizeNavigationBarDesign(using design: (UINavigationBar) -> Void) {
        design(self)
    }

}

extension UISearchBar: SearchBarDesignCustomizable {

    public func customizeSearchBarDesign(using design: (UISearchBar) -> Void) {
        design(self)
    }

}

extension UIToolbar: ToolbarDesignCustomizable {

    public func customizeToolbarDesign(using design: (UIToolbar) -> Void) {
        design(self)
    }

}

extension UITabBar: TabBarDesignCustomizable {

    public func customizeTabBarDesign(using design: (UITabBar) -> Void) {
        design(self)
    }

}

extension UITabBarItem: TabBarItemDesignCustomizable {

    public func customizeTabBarItemDesign(using design: (UITabBarItem) -> Void) {
        design(self)
    }

}
