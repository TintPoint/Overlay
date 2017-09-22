//
//  ViewState.swift
//  Overlay
//
//  Created by Justin Jia on 8/24/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that can be hidden.
/// - SeeAlso: `ViewDisable`, `ViewSelectable`, `ViewHighlightable`, `ViewFocusable`
public protocol ViewHideable {

    /// A `Bool` that indicates whether the view is currently hidden.
    var isHidden: Bool { get set }

}

/// A protocol that describes a view that can be disabled.
/// - SeeAlso: `ViewHideable`, `ViewSelectable`, `ViewHighlightable`, `ViewFocusable`
public protocol ViewDisable {

    /// A `Bool` that indicates whether the view is currently enabled.
    var isEnabled: Bool { get set }

}

/// A protocol that describes a view that can be selected.
/// - SeeAlso: `ViewHideable`, `ViewDisable`, `ViewHighlightable`, `ViewFocusable`
public protocol ViewSelectable {

    /// A `Bool` that indicates whether the view is currently selected.
    var isSelected: Bool { get set }

}

/// A protocol that describes a view that can be highlighted.
/// - SeeAlso: `ViewHideable`, `ViewDisable`, `ViewSelectable`, `ViewFocusable`
public protocol ViewHighlightable {

    /// A `Bool` that indicates whether the view is currently highlighted.
    var isHighlighted: Bool { get set }

}

/// A protocol that describes a view that can be focused.
/// - SeeAlso: `ViewHideable`, `ViewDisable`, `ViewSelectable`, `ViewHighlightable`
public protocol ViewFocusable {

    /// A `Bool` that indicates whether the view is currently focused.
    var isFocused: Bool { get }

}

extension UIBarItem: ViewDisable { }

extension UIView: ViewFocusable, ViewHideable { }

extension UIControl: ViewDisable, ViewSelectable, ViewHighlightable { }

extension UITableViewCell: ViewSelectable, ViewHighlightable { }

extension UILabel: ViewDisable, ViewHighlightable { }

extension UIImageView: ViewHighlightable { }
