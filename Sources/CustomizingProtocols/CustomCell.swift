//
//  CustomCell.swift
//  Overlay
//
//  Created by Justin Jia on 6/24/17.
//  Copyright © 2017 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a cell that will be customized.
public protocol CustomCell {

    /// The `UINib` that describes the cell, or `nil` if no nib is set.
    static var contentNib: UINib? { get }

    /// The `String` that represents the cell identifier.
    static var suggestedIdentifier: String { get }

    /// Returns a `CustomCell` loaded from the nib.
    /// - Returns: a `CustomCell` loaded from the nib, or `nil` if no nib is set.
    static func loadCellFromNib() -> Self?

}

/// A protocol that describes a header footer view that will be customized.
public protocol CustomHeaderFooterView {

    /// The `UINib` that describes the header footer view, or `nil` if no nib is set.
    static var contentNib: UINib? { get }

    /// The `String` that represents the header footer view identifier.
    static var suggestedIdentifier: String { get }

    /// Returns a `CustomHeaderFooterView` loaded from the nib.
    /// - Returns: a `CustomHeaderFooterView` loaded from the nib, or `nil` if no nib is set.
    static func loadHeaderFooterViewFromNib() -> Self?

}

/// A protocol that describes a reusable view that will be customized.
public protocol CustomReusableView {

    /// The `UINib` that describes the reusable view, or `nil` if no nib is set.
    static var contentNib: UINib? { get }

    /// The `String` that represents the reusable view kind.
    static var suggestedKind: String { get }

    /// The `String` that represents the reusable view identifier.
    static var suggestedIdentifier: String { get }

    /// Returns a `CustomReusableView` loaded from the nib.
    /// - Returns: a `CustomReusableView` loaded from the nib, or `nil` if no nib is set.
    static func loadReusableViewFromNib() -> Self?

}

public extension CustomCell {

    static func loadCellFromNib(owner: Any? = nil) -> Self? {
        return contentNib?.instantiate(withOwner: owner).first as? Self
    }

}

public extension CustomHeaderFooterView {

    static func loadHeaderFooterViewFromNib(owner: Any? = nil) -> Self? {
        return contentNib?.instantiate(withOwner: owner).first as? Self
    }

}

public extension CustomReusableView {

    static func loadReusableViewFromNib(owner: Any? = nil) -> Self? {
        return contentNib?.instantiate(withOwner: owner).first as? Self
    }

}
