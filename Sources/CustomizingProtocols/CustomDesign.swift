//
//  CustomDesign.swift
//  Overlay
//
//  Created by Justin Jia on 11/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its design will be customized using a closure.
public protocol CustomDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (DesignCustomizable) -> Void { get }

}

/// A protocol that describes an `UIBarButtonItem` that its design will be customized using a closure.
public protocol CustomBarButtonItemDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIBarButtonItem) -> Void { get }

}

/// A protocol that describes an `UITabBarItem` that its design will be customized using a closure.
public protocol CustomTabBarItemDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITabBarItem) -> Void { get }

}

/// A protocol that describes an `UIView` that its design will be customized using a closure.
public protocol CustomViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIView) -> Void { get }

}

/// A protocol that describes an `UIStackView` that its design will be customized using a closure.
public protocol CustomStackViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIStackView) -> Void { get }

}

/// A protocol that describes an `UIScrollView` that its design will be customized using a closure.
public protocol CustomScrollViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIScrollView) -> Void { get }

}

/// A protocol that describes an `UIActivityIndicatorView` that its design will be customized using a closure.
public protocol CustomActivityIndicatorViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIActivityIndicatorView) -> Void { get }

}

/// A protocol that describes an `UIButton` that its design will be customized using a closure.
public protocol CustomButtonDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIButton) -> Void { get }

}

/// A protocol that describes an `UISegmentedControl` that its design will be customized using a closure.
public protocol CustomSegmentedControlDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISegmentedControl) -> Void { get }

}

/// A protocol that describes an `UISlider` that its design will be customized using a closure.
public protocol CustomSliderDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISlider) -> Void { get }

}

/// A protocol that describes an `UIStepper` that its design will be customized using a closure.
public protocol CustomStepperDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIStepper) -> Void { get }

}

/// A protocol that describes an `UISwitch` that its design will be customized using a closure.
public protocol CustomSwitchDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISwitch) -> Void { get }

}

/// A protocol that describes an `UITextField` that its design will be customized using a closure.
public protocol CustomTextFieldDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITextField) -> Void { get }

}

/// A protocol that describes an `UIImageView` that its design will be customized using a closure.
public protocol CustomImageViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIImageView) -> Void { get }

}

/// A protocol that describes an `UILabel` that its design will be customized using a closure.
public protocol CustomLabelDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UILabel) -> Void { get }

}

/// A protocol that describes an `UINavigationBar` that its design will be customized using a closure.
public protocol CustomNavigationBarDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UINavigationBar) -> Void { get }

}

/// A protocol that describes an `UIProgressView` that its design will be customized using a closure.
public protocol CustomProgressViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIProgressView) -> Void { get }

}

/// A protocol that describes an `UITableView` that its design will be customized using a closure.
public protocol CustomTableViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITableView) -> Void { get }

}

/// A protocol that describes an `UITextView` that its design will be customized using a closure.
public protocol CustomTextViewDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITextView) -> Void { get }

}

/// A protocol that describes an `UISearchBar` that its design will be customized using a closure.
public protocol CustomSearchBarDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UISearchBar) -> Void { get }

}

/// A protocol that describes an `UITabBar` that its design will be customized using a closure.
public protocol CustomTabBarDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UITabBar) -> Void { get }

}

/// A protocol that describes an `UIToolbar` that its design will be customized using a closure.
public protocol CustomToolbarDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (UIToolbar) -> Void { get }

}
