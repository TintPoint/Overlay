//
//  CustomLayout.swift
//  Look
//
//  Created by Justin Jia on 6/26/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomLayout: LayoutCustomizable {
    
    var contentNib: UINib { get }

}
