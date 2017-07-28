//
//  FontCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its font can be customized.
public protocol FontCustomizable: FontStyleRepresentable {

    /// Customizes the font.
    /// - Parameter style: A `FontStyle` that represents the font.
    func customizeFont(using style: FontStyle)

}

/// A protocol that describes a view that its title font can be customized.
public protocol TitleFontCustomizable: FontStyleRepresentable {

    /// Customizes the title font.
    /// - Parameter style: A `FontStyle` that represents the title font.
    func customizeTitleFont(using style: FontStyle)

}

extension UIButton: TitleFontCustomizable {

    public func customizeTitleFont(using style: FontStyle) {
        titleLabel?.font = selectedFont(from: style)
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
