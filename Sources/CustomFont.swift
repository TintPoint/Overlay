//
//  CustomFont.swift
//  Overlay
//
//  Created by Justin Jia on 6/16/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its title font will be customized.
public protocol CustomTitleFont: TitleFontCustomizable {

    /// The `FontStyle` that represents the title font.
    var titleFontStyle: FontStyle { get }

}

/// A protocol that describes a view that its font will be customized.
public protocol CustomFont: FontCustomizable {

    /// The `FontStyle` that represents the font.
    var fontStyle: FontStyle { get }

}
