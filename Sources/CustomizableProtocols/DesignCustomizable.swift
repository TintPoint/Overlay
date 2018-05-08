//
//  DesignCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 11/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an item that its design can be customized using a closure.
public protocol DesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeDesign(using design: (Any) -> Void)
}

/// A protocol that describes an `UIView` that its design can be customized using a closure.
public protocol ViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeViewDesign(using design: (UIView) -> Void)
}

/// A protocol that describes an `UICollectionView` that its design can be customized using a closure.
public protocol CollectionViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeCollectionViewDesign(using design: (UICollectionView) -> Void)
}

/// A protocol that describes an `UITableView` that its design can be customized using a closure.
public protocol TableViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeTableViewDesign(using design: (UITableView) -> Void)
}

/// A protocol that describes an `UIStackView` that its design can be customized using a closure.
public protocol StackViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeStackViewDesign(using design: (UIStackView) -> Void)
}

/// A protocol that describes an `UIScrollView` that its design can be customized using a closure.
public protocol ScrollViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeScrollViewDesign(using design: (UIScrollView) -> Void)
}

/// A protocol that describes an `UIActivityIndicatorView` that its design can be customized using a closure.
public protocol ActivityIndicatorViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeActivityIndicatorViewDesign(using design: (UIActivityIndicatorView) -> Void)
}

/// A protocol that describes an `UIImageView` that its design can be customized using a closure.
public protocol ImageViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeImageViewDesign(using design: (UIImageView) -> Void)
}

/// A protocol that describes an `UIPickerView` that its design can be customized using a closure.
public protocol PickerViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizePickerViewDesign(using design: (UIPickerView) -> Void)
}

/// A protocol that describes an `UIProgressView` that its design can be customized using a closure.
public protocol ProgressViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeProgressViewDesign(using design: (UIProgressView) -> Void)
}

/// A protocol that describes an `UIWebView` that its design can be customized using a closure.
public protocol WebViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeWebViewDesign(using design: (UIWebView) -> Void)
}

/// A protocol that describes an `UIControl` that its design can be customized using a closure.
public protocol ControlDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeControlDesign(using design: (UIControl) -> Void)
}

/// A protocol that describes an `UIButton` that its design can be customized using a closure.
public protocol ButtonDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeButtonDesign(using design: (UIButton) -> Void)
}

/// A protocol that describes an `UIDatePicker` that its design can be customized using a closure.
public protocol DatePickerDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeDatePickerDesign(using design: (UIDatePicker) -> Void)
}

/// A protocol that describes an `UIPageControl` that its design can be customized using a closure.
public protocol PageControlDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizePageControlDesign(using design: (UIPageControl) -> Void)
}

/// A protocol that describes an `UISegmentedControl` that its design can be customized using a closure.
public protocol SegmentedControlDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeSegmentedControlDesign(using design: (UISegmentedControl) -> Void)
}

/// A protocol that describes an `UISlider` that its design can be customized using a closure.
public protocol SliderDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeSliderDesign(using design: (UISlider) -> Void)
}

/// A protocol that describes an `UIStepper` that its design can be customized using a closure.
public protocol StepperDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeStepperDesign(using design: (UIStepper) -> Void)
}

/// A protocol that describes an `UISwitch` that its design can be customized using a closure.
public protocol SwitchDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeSwitchDesign(using design: (UISwitch) -> Void)
}

/// A protocol that describes an `UILabel` that its design can be customized using a closure.
public protocol LabelDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeLabelDesign(using design: (UILabel) -> Void)
}

/// A protocol that describes an `UITextField` that its design can be customized using a closure.
public protocol TextFieldDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeTextFieldDesign(using design: (UITextField) -> Void)
}

/// A protocol that describes an `UITextView` that its design can be customized using a closure.
public protocol TextViewDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeTextViewDesign(using design: (UITextView) -> Void)
}

/// A protocol that describes an `UIBarItem` that its design can be customized using a closure.
public protocol BarItemDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeBarItemDesign(using design: (UIBarItem) -> Void)
}

/// A protocol that describes an `UIBarButtonItem` that its design can be customized using a closure.
public protocol BarButtonItemDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeBarButtonItemDesign(using design: (UIBarButtonItem) -> Void)
}

/// A protocol that describes an `UINavigationBar` that its design can be customized using a closure.
public protocol NavigationBarDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeNavigationBarDesign(using design: (UINavigationBar) -> Void)
}

/// A protocol that describes an `UISearchBar` that its design can be customized using a closure.
public protocol SearchBarDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeSearchBarDesign(using design: (UISearchBar) -> Void)
}

/// A protocol that describes an `UIToolbar` that its design can be customized using a closure.
public protocol ToolbarDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeToolbarDesign(using design: (UIToolbar) -> Void)
}

/// A protocol that describes an `UITabBar` that its design can be customized using a closure.
public protocol TabBarDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeTabBarDesign(using design: (UITabBar) -> Void)
}

/// A protocol that describes an `UITabBarItem` that its design can be customized using a closure.
public protocol TabBarItemDesignCustomizable {
    /// Customizes the design.
    /// - Parameter design: A closure that represents the design.
    func customizeTabBarItemDesign(using design: (UITabBarItem) -> Void)
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
