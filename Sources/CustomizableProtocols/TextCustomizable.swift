//
//  TextCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its placeholder can be customized.
public protocol PlaceholderCustomizable: TextStyleRepresentable {

    /// Customizes the placeholder.
    /// - Parameter style: A `TextStyle` that represents the placeholder.
    func customizePlaceholder(using style: TextStyle)

}

/// A protocol that describes a view that its prompt can be customized.
public protocol PromptCustomizable: TextStyleRepresentable {

    /// Customizes the prompt.
    /// - Parameter style: A `TextStyle` that represents the prompt.
    func customizePrompt(using style: TextStyle)

}

/// A protocol that describes a view that its titles of the segments can be customized.
public protocol SegmentTitlesCustomizable: TextStyleRepresentable {

    /// Customizes the titles of the segments.
    /// - Parameter styles: An array of `TextStyle` that represents the titles of the segments.
    /// The indexes of the array is used to identify segments in the control, from left to right.
    /// Styles which their indexes exceeding the number of segments are ignored.
    func customizeSegmentTitles(using styles: [TextStyle])

}

/// A protocol that describes a view that its titles of the scope buttons can be customized.
public protocol ScopeButtonTitlesCustomizable: TextStyleRepresentable {

    /// Customizes the titles of the scope buttons.
    /// - Parameter styles: An array of `TextStyle` that represents the titles of the scope buttons.
    /// The indexes of the array is used to identify buttons in the control, from left to right.
    func customizeScopeButtonTitles(using styles: [TextStyle])

}

/// A protocol that describes a view that its text can be customized.
public protocol TextCustomizable: TextStyleRepresentable {

    /// Customizes the text.
    /// - Parameter style: A `TextStyle` that represents the text.
    func customizeText(using style: TextStyle)

}

/// A protocol that describes a view that its title can be customized.
public protocol TitleCustomizable: TextStyleRepresentable {

    /// Customizes the title.
    /// - Parameter style: A `TextStyle` that represents the title.
    func customizeTitle(using style: TextStyle)

}

extension UIBarButtonItem: TitleCustomizable {

    public func customizeTitle(using style: TextStyle) {
        title = selectedText(from: style)
    }

}

extension UITabBarItem: TitleCustomizable {

    public func customizeTitle(using style: TextStyle) {
        title = selectedText(from: style)
    }

}

extension UIButton: TitleCustomizable {

    public func customizeTitle(using style: TextStyle) {
        customizeText(using: style, through: setTitle)
    }

}

extension UISegmentedControl: SegmentTitlesCustomizable {

    public func customizeSegmentTitles(using styles: [TextStyle]) {
        for (index, style) in styles.enumerated() where index < numberOfSegments {
            setTitle(selectedText(from: style), forSegmentAt: index)
        }
    }

}

extension UITextField: TextCustomizable, PlaceholderCustomizable {

    public func customizeText(using style: TextStyle) {
        text = selectedText(from: style)
    }

    public func customizePlaceholder(using style: TextStyle) {
        placeholder = selectedText(from: style)
    }

}

extension UILabel: TextCustomizable {

    public func customizeText(using style: TextStyle) {
        text = selectedText(from: style)
    }

}

extension UITextView: TextCustomizable {

    public func customizeText(using style: TextStyle) {
        text = selectedText(from: style)
    }

}

extension UISearchBar: TextCustomizable, PlaceholderCustomizable, PromptCustomizable, ScopeButtonTitlesCustomizable {

    public func customizeText(using style: TextStyle) {
        text = selectedText(from: style)
    }

    public func customizePlaceholder(using style: TextStyle) {
        placeholder = selectedText(from: style)
    }

    public func customizePrompt(using style: TextStyle) {
        prompt = selectedText(from: style)
    }

    public func customizeScopeButtonTitles(using styles: [TextStyle]) {
        scopeButtonTitles = styles.map { selectedText(from: $0) ?? $0.normal() }
    }

}
