//
//  CustomLayout.swift
//  Look
//
//  Created by Justin Jia on 6/26/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its layout will be customized.
public protocol CustomLayout: LayoutCustomizable {

    /// The `UINib` that describes the layout.
    var contentNib: UINib { get }

}
