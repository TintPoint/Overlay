//
//  CustomDesign.swift
//  Overlay
//
//  Created by Justin Jia on 11/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that its design will be customized using a closure.
public protocol CustomDesign {

    /// The closure that customizes the design.
    var design: (Any) -> Void { get }

}

/// A protocol that describes an `UIView` that its design will be customized using a closure.
public protocol CustomViewDesign {

    /// The closure that customizes the design.
    var design: (UIView) -> Void { get }

}

/// A protocol that describes an `UICollectionView` that its design will be customized using a closure.
public protocol CustomCollectionViewDesign {

    /// The closure that customizes the design.
    var design: (UICollectionView) -> Void { get }

}

/// A protocol that describes an `UITableView` that its design will be customized using a closure.
public protocol CustomTableViewDesign {

    /// The closure that customizes the design.
    var design: (UITableView) -> Void { get }

}

/// A protocol that describes an `UIStackView` that its design will be customized using a closure.
public protocol CustomStackViewDesign {

    /// The closure that customizes the design.
    var design: (UIStackView) -> Void { get }

}

/// A protocol that describes an `UIScrollView` that its design will be customized using a closure.
public protocol CustomScrollViewDesign {

    /// The closure that customizes the design.
    var design: (UIScrollView) -> Void { get }

}

/// A protocol that describes an `UIActivityIndicatorView` that its design will be customized using a closure.
public protocol CustomActivityIndicatorViewDesign {

    /// The closure that customizes the design.
    var design: (UIActivityIndicatorView) -> Void { get }

}

/// A protocol that describes an `UIImageView` that its design will be customized using a closure.
public protocol CustomImageViewDesign {

    /// The closure that customizes the design.
    var design: (UIImageView) -> Void { get }

}

/// A protocol that describes an `UIPickerView` that its design will be customized using a closure.
public protocol CustomPickerViewDesign {

    /// The closure that customizes the design.
    var design: (UIPickerView) -> Void { get }

}

/// A protocol that describes an `UIProgressView` that its design will be customized using a closure.
public protocol CustomProgressViewDesign {

    /// The closure that customizes the design.
    var design: (UIProgressView) -> Void { get }

}

/// A protocol that describes an `UIWebView` that its design will be customized using a closure.
public protocol CustomWebViewDesign {

    /// The closure that customizes the design.
    var design: (UIWebView) -> Void { get }

}

/// A protocol that describes an `UIControl` that its design will be customized using a closure.
public protocol CustomControlDesign {

    /// The closure that customizes the design.
    var design: (UIControl) -> Void { get }

}

/// A protocol that describes an `UIButton` that its design will be customized using a closure.
public protocol CustomButtonDesign {

    /// The closure that customizes the design.
    var design: (UIButton) -> Void { get }

}

/// A protocol that describes an `UIDatePicker` that its design will be customized using a closure.
public protocol CustomDatePickerDesign {

    /// The closure that customizes the design.
    var design: (UIDatePicker) -> Void { get }

}

/// A protocol that describes an `UIPageControl` that its design will be customized using a closure.
public protocol CustomPageControlDesign {

    /// The closure that customizes the design.
    var design: (UIPageControl) -> Void { get }

}

/// A protocol that describes an `UISegmentedControl` that its design will be customized using a closure.
public protocol CustomSegmentedControlDesign {

    /// The closure that customizes the design.
    var design: (UISegmentedControl) -> Void { get }

}

/// A protocol that describes an `UISlider` that its design will be customized using a closure.
public protocol CustomSliderDesign {

    /// The closure that customizes the design.
    var design: (UISlider) -> Void { get }

}

/// A protocol that describes an `UIStepper` that its design will be customized using a closure.
public protocol CustomStepperDesign {

    /// The closure that customizes the design.
    var design: (UIStepper) -> Void { get }

}

/// A protocol that describes an `UISwitch` that its design will be customized using a closure.
public protocol CustomSwitchDesign {

    /// The closure that customizes the design.
    var design: (UISwitch) -> Void { get }

}

/// A protocol that describes an `UILabel` that its design will be customized using a closure.
public protocol CustomLabelDesign {

    /// The closure that customizes the design.
    var design: (UILabel) -> Void { get }

}

/// A protocol that describes an `UITextField` that its design will be customized using a closure.
public protocol CustomTextFieldDesign {

    /// The closure that customizes the design.
    var design: (UITextField) -> Void { get }

}

/// A protocol that describes an `UITextView` that its design will be customized using a closure.
public protocol CustomTextViewDesign {

    /// The closure that customizes the design.
    var design: (UITextView) -> Void { get }

}

/// A protocol that describes an `UIBarItem` that its design will be customized using a closure.
public protocol CustomBarItemDesign {

    /// The closure that customizes the design.
    var design: (UIBarItem) -> Void { get }

}

/// A protocol that describes an `UIBarButtonItem` that its design will be customized using a closure.
public protocol CustomBarButtonItemDesign {

    /// The closure that customizes the design.
    var design: (UIBarButtonItem) -> Void { get }

}

/// A protocol that describes an `UINavigationBar` that its design will be customized using a closure.
public protocol CustomNavigationBarDesign {

    /// The closure that customizes the design.
    var design: (UINavigationBar) -> Void { get }

}

/// A protocol that describes an `UISearchBar` that its design will be customized using a closure.
public protocol CustomSearchBarDesign {

    /// The closure that customizes the design.
    var design: (UISearchBar) -> Void { get }

}

/// A protocol that describes an `UIToolbar` that its design will be customized using a closure.
public protocol CustomToolbarDesign {

    /// The closure that customizes the design.
    var design: (UIToolbar) -> Void { get }

}

/// A protocol that describes an `UITabBar` that its design will be customized using a closure.
public protocol CustomTabBarDesign {

    /// The closure that customizes the design.
    var design: (UITabBar) -> Void { get }

}

/// A protocol that describes an `UITabBarItem` that its design will be customized using a closure.
public protocol CustomTabBarItemDesign {

    /// The closure that customizes the design.
    var design: (UITabBarItem) -> Void { get }

}

extension UIView: ViewDesignCustomizable { }

extension UICollectionView: CollectionViewDesignCustomizable { }

extension UITableView: TableViewDesignCustomizable { }

extension UIStackView: StackViewDesignCustomizable { }

extension UIScrollView: ScrollViewDesignCustomizable { }

extension UIActivityIndicatorView: ActivityIndicatorViewDesignCustomizable { }

extension UIImageView: ImageViewDesignCustomizable { }

extension UIPickerView: PickerViewDesignCustomizable { }

extension UIProgressView: ProgressViewDesignCustomizable { }

extension UIWebView: WebViewDesignCustomizable { }

extension UIControl: ControlDesignCustomizable { }

extension UIButton: ButtonDesignCustomizable { }

extension UIDatePicker: DatePickerDesignCustomizable { }

extension UIPageControl: PageControlDesignCustomizable { }

extension UISegmentedControl: SegmentedControlDesignCustomizable { }

extension UISlider: SliderDesignCustomizable { }

extension UIStepper: StepperDesignCustomizable { }

extension UISwitch: SwitchDesignCustomizable { }

extension UILabel: LabelDesignCustomizable { }

extension UITextField: TextFieldDesignCustomizable { }

extension UITextView: TextViewDesignCustomizable { }

extension UIBarItem: BarItemDesignCustomizable { }

extension UIBarButtonItem: BarButtonItemDesignCustomizable { }

extension UINavigationBar: NavigationBarDesignCustomizable { }

extension UISearchBar: SearchBarDesignCustomizable { }

extension UIToolbar: ToolbarDesignCustomizable { }

extension UITabBar: TabBarDesignCustomizable { }

extension UITabBarItem: TabBarItemDesignCustomizable { }
