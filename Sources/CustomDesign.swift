//
//  CustomDesign.swift
//  Overlay
//
//  Created by Justin Jia on 11/13/16.
//  Copyright © 2016 TintPoint. All rights reserved.
//

import UIKit

/// A protocol that describes a view that its design will be customized using a closure.
public protocol CustomDesign: DesignCustomizable {

    /// The closure that customizes the design.
    var design: (DesignCustomizable) -> () { get }

}
