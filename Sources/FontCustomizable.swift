//
//  FontCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its font can be customized.
public protocol FontCustomizable: FontStyleExpressible {
    
    /// Customizes the font.
    /// - Parameter style: A `FontStyle` that describes the font.
    func customizeFont(using style: FontStyle)
    
}

extension UITextField: FontCustomizable {
    
    public func customizeFont(using style: FontStyle) {
        font = selectedFont(from: style)
    }
    
}

extension UILabel: FontCustomizable {
    
    public func customizeFont(using style: FontStyle) {
        font = selectedFont(from: style)
    }
    
}

extension UITextView: FontCustomizable {
    
    public func customizeFont(using style: FontStyle) {
        font = selectedFont(from: style)
    }
    
}
