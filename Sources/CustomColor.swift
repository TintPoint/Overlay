//
//  CustomColor.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomBackgroundColor: BackgroundColorCustomizable {
    
    var backgroundColorStyle: ColorStyle { get }
    
}

public protocol CustomBadgeColor: BadgeColorCustomizable {
    
    var badgeColorStyle: ColorStyle { get }
    
}

public protocol CustomBarTintColor: BarTintColorCustomizable {
    
    var barTintColorStyle: ColorStyle { get }
    
}

public protocol CustomBorderColor: BorderColorCustomizable {
    
    var borderColorStyle: ColorStyle { get }
    
}

public protocol CustomIndicatorColor: IndicatorColorCustomizable {
    
    var indicatorColorStyle: ColorStyle { get }
    
}

public protocol CustomMaximumTrackTintColor: MaximumTrackTintColorCustomizable {
    
    var maximumTrackTintColorStyle: ColorStyle { get }
    
}

public protocol CustomMinimumTrackTintColor: MinimumTrackTintColorCustomizable {
    
    var minimumTrackTintColorStyle: ColorStyle { get }
    
}

public protocol CustomOnTintColor: OnTintColorCustomizable {
    
    var onTintColorStyle: ColorStyle { get }
    
}

public protocol CustomProgressTintColor: ProgressTintColorCustomizable {
    
    var progressTintColorStyle: ColorStyle { get }
    
}

public protocol CustomSectionIndexBackgroundColor: SectionIndexBackgroundColorCustomizable {
    
    var sectionIndexBackgroundColorStyle: ColorStyle { get }
    
}

public protocol CustomSectionIndexColor: SectionIndexColorCustomizable {
    
    var sectionIndexColorStyle: ColorStyle { get }
    
}

public protocol CustomSectionIndexTrackingBackgroundColor: SectionIndexTrackingBackgroundColorCustomizable {
    
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle { get }
    
}

public protocol CustomSeparatorColor: SeparatorColorCustomizable {
    
    var separatorColorStyle: ColorStyle { get }
    
}

public protocol CustomShadowColor: ShadowColorCustomizable {
    
    var shadowColorStyle: ColorStyle { get }
    
}

public protocol CustomTextColor: TextColorCustomizable {
    
    var textColorStyle: ColorStyle { get }
    
}

public protocol CustomThumbTintColor: ThumbTintColorCustomizable {
    
    var thumbTintColorStyle: ColorStyle { get }
    
}

public protocol CustomTintColor: TintColorCustomizable {
    
    var tintColorStyle: ColorStyle { get }
    
}

public protocol CustomTitleColor: TitleColorCustomizable {
    
    var titleColorStyle: ColorStyle { get }
    
}

public protocol CustomTitleShadowColor: TitleShadowColorCustomizable {
    
    var titleShadowColorStyle: ColorStyle { get }
    
}

public protocol CustomTrackTintColor: TrackTintColorCustomizable {
    
    var trackTintColorStyle: ColorStyle { get }
    
}

public protocol CustomUnselectedItemTintColor: UnselectedItemTintColorCustomizable {
    
    var unselectedItemTintColorStyle: ColorStyle { get }
    
}
