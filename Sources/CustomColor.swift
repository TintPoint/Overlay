//
//  CustomColor.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

protocol CustomTintColor: ViewCustomizable {

    var tintColor: UIColor! { get set }
    var tintColorStyle: ColorStyle { get }

}

protocol CustomBackgroundColor: ViewCustomizable {

    var backgroundColor: UIColor? { get set }
    var backgroundColorStyle: ColorStyle { get }

}

protocol CustomTextColor: ViewCustomizable {

    var textColor: UIColor? { get set }
    var textColorStyle: ColorStyle { get }

}

protocol CustomShadowColor: ViewCustomizable {

    var shadowColor: UIColor? { get set }
    var shadowColorStyle: ColorStyle { get }

}

protocol CustomActivityIndicatorViewColor: ViewCustomizable {

    var color: UIColor? { get set }
    var colorStyle: ColorStyle { get }

}

protocol CustomButtonTitleColor: ViewCustomizable {

    func setTitleColor(_ color: UIColor?, for state: UIControlState)
    var titleColorStyle: ColorStyle { get }

}

protocol CustomButtonTitleShadowColor: ViewCustomizable {

    func setTitleShadowColor(_ color: UIColor?, for state: UIControlState)
    var titleShadowColorStyle: ColorStyle { get }

}

protocol CustomSwitchOnTintColor: ViewCustomizable {

    var onTintColor: UIColor? { get set }
    var onTintColorStyle: ColorStyle { get }

}

protocol CustomSwitchThumbTintColor: ViewCustomizable {

    var thumbTintColor: UIColor? { get set }
    var thumbTintColorStyle: ColorStyle { get }

}

protocol CustomBarTintColor: ViewCustomizable {

    var barTintColor: UIColor? { get set }
    var barTintColorStyle: ColorStyle { get }

}

protocol CustomProgressTintColor: ViewCustomizable {

    var progressTintColor: UIColor? { get set }
    var progressTintColorStyle: ColorStyle { get }

}

protocol CustomProgressTrackTintColor: ViewCustomizable {

    var trackTintColor: UIColor? { get set }
    var trackTintColorStyle: ColorStyle { get }

}

protocol CustomTableViewSeparatorColor: ViewCustomizable {

    var separatorColor: UIColor? { get set }
    var separatorColorStyle: ColorStyle { get }

}

protocol CustomTableViewSectionIndexColor: ViewCustomizable {

    var sectionIndexColor: UIColor? { get set }
    var sectionIndexColorStyle: ColorStyle { get }

}

protocol CustomTableViewSectionIndexBackgroundColor: ViewCustomizable {

    var sectionIndexBackgroundColor: UIColor? { get set }
    var sectionIndexBackgroundColorStyle: ColorStyle { get }

}

protocol CustomTableViewSectionIndexTrackingBackgroundColor: ViewCustomizable {

    var sectionIndexTrackingBackgroundColor: UIColor? { get set }
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle { get }

}

protocol CustomTabBarUnselectedItemTintColor: ViewCustomizable {

    var unselectedItemTintColor: UIColor? { get set }
    var unselectedItemTintColorStyle: ColorStyle { get }

}
