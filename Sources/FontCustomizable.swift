//
//  FontCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol FontCustomizable: ViewCustomizable {
    
    func customizeFont(using style: FontStyle)
    
}

extension UITextField: FontCustomizable {
    
    public func customizeFont(using style: FontStyle) {
        font = selected(style)
    }
    
}

extension UILabel: FontCustomizable {
    
    public func customizeFont(using style: FontStyle) {
        font = selected(style)
    }
    
}

extension UITextView: FontCustomizable {
    
    public func customizeFont(using style: FontStyle) {
        font = selected(style)
    }
    
}
