//
//  TextAlignmentCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 1/10/17.
//  Copyright © 2017 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its alignment of text can be customized.
public protocol TextAlignmentCustomizable: TextAlignmentStyleRepresentable {

    /// Customizes the alignment of text.
    /// - Parameter style: A `TextAlignmentStyle` that represents the alignment of text.
    func customizeTextAlignment(using style: TextAlignmentStyle)

}

/// A protocol that describes a view that its alignment of title text can be customized.
public protocol TitleTextAlignmentCustomizable: TextAlignmentStyleRepresentable {

    /// Customizes the alignment of title text.
    /// - Parameter style: A `TextAlignmentStyle` that represents the alignment of title text.
    func customizeTitleTextAlignment(using style: TextAlignmentStyle)

}

extension UIButton: TitleTextAlignmentCustomizable {

    public func customizeTitleTextAlignment(using style: TextAlignmentStyle) {
        titleLabel?.textAlignment = selectedTextAlignment(from: style) ?? .left
    }

}

extension UITextField: TextAlignmentCustomizable {

    public func customizeTextAlignment(using style: TextAlignmentStyle) {
        textAlignment = selectedTextAlignment(from: style) ?? .left
    }

}

extension UILabel: TextAlignmentCustomizable {

    public func customizeTextAlignment(using style: TextAlignmentStyle) {
        textAlignment = selectedTextAlignment(from: style) ?? .left
    }

}

extension UITextView: TextAlignmentCustomizable {

    public func customizeTextAlignment(using style: TextAlignmentStyle) {
        textAlignment = selectedTextAlignment(from: style) ?? .left
    }

}
