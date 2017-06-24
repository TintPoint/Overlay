//
//  CellCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 6/24/17.
//  Copyright © 2017 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its cells can be customized.
public protocol CellCustomizable {

    /// The type that represents cells of the view.
    associatedtype Cell

    /// The metatype that represents the class of cells of the view.
    associatedtype CellClass

    /// Registers a `CellClass` for use in creating new cells.
    /// - Parameter cellClass: A `CellClass` that represents the class of a cell.
    func register(_ cellClass: CellClass)

}

/// A protocol that describes a view that its header footer views can be customized.
public protocol HeaderFooterViewCustomizable {

    /// The type that represents header footer views of the view.
    associatedtype HeaderFooterView

    /// The metatype that represents the class of header footer views of the view.
    associatedtype HeaderFooterViewClass

    /// Registers a `HeaderFooterViewClass` for use in creating new header footer views.
    /// - Parameter headerFooterViewClass: A `HeaderFooterViewClass` that represents the class of a header footer view.
    func register(_ headerFooterViewClass: HeaderFooterViewClass)

}

/// A protocol that describes a view that its reusable views can be customized.
public protocol ReusableViewCustomizable {

    /// The type that represents reusable views of the view.
    associatedtype ReusableView

    /// The metatype that represents the class of reusable views of the view.
    associatedtype ReusableViewClass

    /// Registers a `ReusableViewClass` for use in creating new reusable views.
    /// - Parameter ReusableViewClass: A `ReusableViewClass` that represents the class of a reusable view.
    func register(_ reusableViewClass: ReusableViewClass)

}

extension UITableView: CellCustomizable {

    public typealias Cell = UITableViewCell & CustomCell

    public typealias CellClass = Cell.Type

    public func register(_ cellClass: CellClass) {
        if let contentNib = cellClass.contentNib {
            register(contentNib, forCellReuseIdentifier: cellClass.suggestedIdentifier)
        } else {
            register(cellClass, forCellReuseIdentifier: cellClass.suggestedIdentifier)
        }
    }

}

public extension UITableView {

    /// Returns a reusable `Cell` located by its class and adds it to the table.
    /// Calls `dequeueReusableCell(withIdentifier:for:)` method.
    /// - Parameter cellClass: A `Cell.Type` that represents the class of a cell.
    /// - Parameter indexPath: An `IndexPath` that represents the location of a cell.
    /// - Returns: A reusable `Cell` located by its class.
    func dequeueReusableCell<T: Cell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: cellClass.suggestedIdentifier, for: indexPath) as! T
    }

    /// Returns a reusable `Cell` located by its class.
    /// Calls `dequeueReusableCell(withIdentifier:)` method.
    /// - Parameter cellClass: A `Cell.Type` that represents the class of a cell.
    /// - Returns: A reusable `Cell` located by its class.
    func dequeueReusableCell<T: Cell>(_ cellClass: T.Type) -> T {
        return dequeueReusableCell(withIdentifier: cellClass.suggestedIdentifier) as! T
    }

}

extension UICollectionView: CellCustomizable {

    public typealias Cell = UICollectionViewCell & CustomCell

    public typealias CellClass = Cell.Type

    public func register(_ cellClass: CellClass) {
        if let contentNib = cellClass.contentNib {
            register(contentNib, forCellWithReuseIdentifier: cellClass.suggestedIdentifier)
        } else {
            register(cellClass, forCellWithReuseIdentifier: cellClass.suggestedIdentifier)
        }
    }

}

public extension UICollectionView {

    /// Returns a reusable `Cell` located by its class.
    /// Calls `dequeueReusableCell(withReuseIdentifier:for:)` method.
    /// - Parameter cellClass: A `Cell.Type` that represents the class of a cell.
    /// - Parameter indexPath: An `IndexPath` that represents the location of a cell.
    /// - Returns: A reusable `Cell` located by its class.
    func dequeueReusableCell<T: Cell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: cellClass.suggestedIdentifier, for: indexPath) as! T
    }

}

extension UITableView: HeaderFooterViewCustomizable {

    public typealias HeaderFooterView = UITableViewHeaderFooterView & CustomHeaderFooterView

    public typealias HeaderFooterViewClass = HeaderFooterView.Type

    public func register(_ headerFooterViewClass: HeaderFooterViewClass) {
        if let contentNib = headerFooterViewClass.contentNib {
            register(contentNib, forHeaderFooterViewReuseIdentifier: headerFooterViewClass.suggestedIdentifier)
        } else {
            register(headerFooterViewClass, forHeaderFooterViewReuseIdentifier: headerFooterViewClass.suggestedIdentifier)
        }
    }

}

public extension UITableView {

    /// Returns a reusable `HeaderFooterView` located by its class.
    /// Calls `dequeueReusableHeaderFooterView(withIdentifier:)` method.
    /// - Parameter headerFooterViewClass: A `HeaderFooterView.Type` that represents the class of a header footer view.
    /// Returns: A reusable `HeaderFooterView` located by its class.
    func dequeueReusableHeaderFooterView<T: HeaderFooterView>(_ headerFooterViewClass: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: headerFooterViewClass.suggestedIdentifier) as! T
    }

}

extension UICollectionView: ReusableViewCustomizable {

    public typealias ReusableView = UICollectionReusableView & CustomReusableView

    public typealias ReusableViewClass = ReusableView.Type

    public func register(_ reusableViewClass: ReusableViewClass) {
        if let contentNib = reusableViewClass.contentNib {
            register(contentNib, forSupplementaryViewOfKind: reusableViewClass.suggestedKind, withReuseIdentifier: reusableViewClass.suggestedIdentifier)
        } else {
            register(reusableViewClass, forSupplementaryViewOfKind: reusableViewClass.suggestedKind, withReuseIdentifier: reusableViewClass.suggestedIdentifier)
        }
    }

}

public extension UICollectionView {

    /// Returns a supplementary `ReusableView` located by its class.
    /// Calls `dequeueReusableSupplementaryView(ofKind:withReuseIdentifier:for:)` method.
    /// - Parameter reusableViewClass: A `ReusableView.Type` that represents the class of a reusable view.
    /// - Parameter indexPath: An `IndexPath` that represents the location of a reusable view.
    /// - Returns: A supplementary `ReusableView` located by its class.
    func dequeueReusableSupplementaryView<T: ReusableView>(_ reusableViewClass: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: reusableViewClass.suggestedKind, withReuseIdentifier: reusableViewClass.suggestedIdentifier, for: indexPath) as! T
    }

}
