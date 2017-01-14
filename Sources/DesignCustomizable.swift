//
//  DesignCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 11/13/16.
//  Copyright © 2016 TintPoint. All rights reserved.
//

import UIKit

/// A protocol that describes a view that its design can be customized using a closure.
public protocol DesignCustomizable {

    /// Customizes the design using a closure.
    /// - Parameter designHandler: A closure that customizes the design.
    func customizeDesign(using designHandler: (DesignCustomizable) -> Void)

}

extension UIView: DesignCustomizable {

    public func customizeDesign(using designHandler: (DesignCustomizable) -> Void) {
        designHandler(self)
    }

}
