//
//  ViewState.swift
//  Overlay
//
//  Created by Justin Jia on 8/24/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that can be disabled.
/// - SeeAlso: `ViewSelectable`, `ViewHighlightable`, `ViewFocusable`
public protocol ViewDisable {

    /// A `Bool` value that indicates whether the view is currently enabled.
    var isEnabled: Bool { get }

}

/// A protocol that describes a view that can be selected.
/// - SeeAlso: `ViewDisable`, `ViewHighlightable`, `ViewFocusable`
public protocol ViewSelectable {

    /// A `Bool` value that indicates whether the view is currently selected.
    var isSelected: Bool { get }

}

/// A protocol that describes a view that can be highlighted.
/// - SeeAlso: `ViewDisable`, `ViewSelectable`, `ViewFocusable`
public protocol ViewHighlightable {

    /// A `Bool` value that indicates whether the view is currently highlighted.
    var isHighlighted: Bool { get }

}

/// A protocol that describes a view that can be focused.
/// - SeeAlso: `ViewDisable`, `ViewSelectable`, `ViewHighlightable`
public protocol ViewFocusable {

    /// A `Bool` value that indicates whether the view is currently focused.
    var isFocused: Bool { get }

}

extension UIBarItem: ViewDisable { }

extension UIView: ViewFocusable { }

extension UIControl: ViewDisable, ViewSelectable, ViewHighlightable { }

extension UITableViewCell: ViewSelectable, ViewHighlightable { }

extension UILabel: ViewDisable, ViewHighlightable { }

extension UIImageView: ViewHighlightable { }
