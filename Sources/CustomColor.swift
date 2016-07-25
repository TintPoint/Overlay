//
//  CustomColor.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomTintColor: ViewCustomizable {

    var tintColor: UIColor! { get set }
    var tintColorStyle: ColorStyle { get }

}

public protocol CustomBackgroundColor: ViewCustomizable {

    var backgroundColor: UIColor? { get set }
    var backgroundColorStyle: ColorStyle { get }

}

public protocol CustomTextColor: ViewCustomizable {

    var textColor: UIColor? { get set }
    var textColorStyle: ColorStyle { get }

}

public protocol CustomShadowColor: ViewCustomizable {

    var shadowColor: UIColor? { get set }
    var shadowColorStyle: ColorStyle { get }

}

public protocol CustomActivityIndicatorViewColor: ViewCustomizable {

    var color: UIColor? { get set }
    var colorStyle: ColorStyle { get }

}

public protocol CustomButtonTitleColor: ViewCustomizable {

    func setTitleColor(_ color: UIColor?, for state: UIControlState)
    var titleColorStyle: ColorStyle { get }

}

public protocol CustomButtonTitleShadowColor: ViewCustomizable {

    func setTitleShadowColor(_ color: UIColor?, for state: UIControlState)
    var titleShadowColorStyle: ColorStyle { get }

}

public protocol CustomSwitchOnTintColor: ViewCustomizable {

    var onTintColor: UIColor? { get set }
    var onTintColorStyle: ColorStyle { get }

}

public protocol CustomSwitchThumbTintColor: ViewCustomizable {

    var thumbTintColor: UIColor? { get set }
    var thumbTintColorStyle: ColorStyle { get }

}

public protocol CustomBarTintColor: ViewCustomizable {

    var barTintColor: UIColor? { get set }
    var barTintColorStyle: ColorStyle { get }

}

public protocol CustomProgressTintColor: ViewCustomizable {

    var progressTintColor: UIColor? { get set }
    var progressTintColorStyle: ColorStyle { get }

}

public protocol CustomProgressTrackTintColor: ViewCustomizable {

    var trackTintColor: UIColor? { get set }
    var trackTintColorStyle: ColorStyle { get }

}

public protocol CustomTableViewSeparatorColor: ViewCustomizable {

    var separatorColor: UIColor? { get set }
    var separatorColorStyle: ColorStyle { get }

}

public protocol CustomTableViewSectionIndexColor: ViewCustomizable {

    var sectionIndexColor: UIColor? { get set }
    var sectionIndexColorStyle: ColorStyle { get }

}

public protocol CustomTableViewSectionIndexBackgroundColor: ViewCustomizable {

    var sectionIndexBackgroundColor: UIColor? { get set }
    var sectionIndexBackgroundColorStyle: ColorStyle { get }

}

public protocol CustomTableViewSectionIndexTrackingBackgroundColor: ViewCustomizable {

    var sectionIndexTrackingBackgroundColor: UIColor? { get set }
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle { get }

}

@available(iOS 10.0, *)
public protocol CustomTabBarUnselectedItemTintColor: ViewCustomizable {

    var unselectedItemTintColor: UIColor? { get set }
    var unselectedItemTintColorStyle: ColorStyle { get }

}
