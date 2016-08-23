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

extension ViewCustomizable {
    
    func selectedFont(from style: FontStyle, usingNormalFor states: [UIControlState] = []) -> UIFont? {
        guard let styleGroup = style as? FontStyleGroup else {
            return style.normal()
        }
        
        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return styleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return styleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return styleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return styleGroup.focused()
        } else {
            return styleGroup.normal()
        }
    }
    
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
