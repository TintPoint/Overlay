//
//  CustomizingCellsTests.swift
//  Tests
//
//  Created by Justin Jia on 6/24/17.
//  Copyright © 2017 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomTableViewCell: UITableViewCell, CustomCell {

    static let contentNib: UINib? = UINib(nibName: "CustomTableViewCell", bundle: Bundle(for: CustomTableViewCell.self))
    static let suggestedIdentifier: String = "CustomTableViewCell"

}

class CustomEmptyTableViewCell: UITableViewCell, CustomCell {

    static let contentNib: UINib? = nil
    static let suggestedIdentifier: String = "CustomEmptyTableViewCell"

}

class CustomCollectionViewCell: UICollectionViewCell, CustomCell {

    static let contentNib: UINib? = UINib(nibName: "CustomCollectionViewCell", bundle: Bundle(for: CustomCollectionViewCell.self))
    static let suggestedIdentifier: String = "CustomCollectionViewCell"

}

class CustomEmptyCollectionViewCell: UICollectionViewCell, CustomCell {

    static let contentNib: UINib? = nil
    static let suggestedIdentifier: String = "CustomEmptyCollectionViewCell"

}

class CustomTableViewHeaderFooterView: UITableViewHeaderFooterView, CustomHeaderFooterView {

    static let contentNib: UINib? = UINib(nibName: "CustomTableViewHeaderFooterView", bundle: Bundle(for: CustomTableViewHeaderFooterView.self))
    static let suggestedIdentifier: String = "CustomTableViewHeaderFooterView"

}

class CustomEmptyTableViewHeaderFooterView: UITableViewHeaderFooterView, CustomHeaderFooterView {

    static let contentNib: UINib? = nil
    static let suggestedIdentifier: String = "CustomEmptyTableViewHeaderFooterView"

}

class CustomCollectionReusableView: UICollectionReusableView, CustomReusableView {

    static let contentNib: UINib? = UINib(nibName: "CustomCollectionReusableView", bundle: Bundle(for: CustomCollectionReusableView.self))
    static let suggestedKind: String = UICollectionElementKindSectionHeader
    static let suggestedIdentifier: String = "CustomCollectionReusableView"

}

class CustomEmptyCollectionReusableView: UICollectionReusableView, CustomReusableView {

    static let contentNib: UINib? = nil
    static let suggestedKind: String = UICollectionElementKindSectionFooter
    static let suggestedIdentifier: String = "CustomEmptyCollectionReusableView"

}

class CustomizingCellsTests: XCTestCase {

    func testTableViewCell() {
        let tableView = UITableView()
        tableView.register(CustomTableViewCell.self)
        let firstCell = tableView.dequeueReusableCell(CustomTableViewCell.self)
        XCTAssert(firstCell as Any is CustomTableViewCell)
        let secondCell = tableView.dequeueReusableCell(CustomTableViewCell.self, for: IndexPath(row: 0, section: 0))
        XCTAssert(secondCell as Any is CustomTableViewCell)
        let thirdCell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.suggestedIdentifier)
        XCTAssert(thirdCell as Any is CustomTableViewCell)
        let fourthCell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.suggestedIdentifier, for: IndexPath(row: 0, section: 0))
        XCTAssert(fourthCell as Any is CustomTableViewCell)
    }

    func testEmptyTableViewCell() {
        let tableView = UITableView()
        tableView.register(CustomEmptyTableViewCell.self)
        let firstCell = tableView.dequeueReusableCell(CustomEmptyTableViewCell.self)
        XCTAssert(firstCell as Any is CustomEmptyTableViewCell)
        let secondCell = tableView.dequeueReusableCell(CustomEmptyTableViewCell.self, for: IndexPath(row: 0, section: 0))
        XCTAssert(secondCell as Any is CustomEmptyTableViewCell)
        let thirdCell = tableView.dequeueReusableCell(withIdentifier: CustomEmptyTableViewCell.suggestedIdentifier)
        XCTAssert(thirdCell as Any is CustomEmptyTableViewCell)
        let fourthCell = tableView.dequeueReusableCell(withIdentifier: CustomEmptyTableViewCell.suggestedIdentifier, for: IndexPath(row: 0, section: 0))
        XCTAssert(fourthCell as Any is CustomEmptyTableViewCell)
    }

    func testCollectionViewCell() {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView.register(CustomCollectionViewCell.self)
    }

    func testEmptyCollectionViewCell() {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView.register(CustomEmptyCollectionViewCell.self)
    }

    func testTableViewHeaderFooterView() {
        let tableView = UITableView()
        tableView.register(CustomTableViewHeaderFooterView.self)
        let firstView = tableView.dequeueReusableHeaderFooterView(CustomTableViewHeaderFooterView.self)
        XCTAssert(firstView as Any is CustomTableViewHeaderFooterView)
        let secondView = tableView.dequeueReusableHeaderFooterView(withIdentifier: CustomTableViewHeaderFooterView.suggestedIdentifier)
        XCTAssert(secondView as Any is CustomTableViewHeaderFooterView)
    }

    func testEmptyTableViewHeaderFooterView() {
        let tableView = UITableView()
        tableView.register(CustomEmptyTableViewHeaderFooterView.self)
        let firstView = tableView.dequeueReusableHeaderFooterView(CustomEmptyTableViewHeaderFooterView.self)
        XCTAssert(firstView as Any is CustomEmptyTableViewHeaderFooterView)
        let secondView = tableView.dequeueReusableHeaderFooterView(withIdentifier: CustomEmptyTableViewHeaderFooterView.suggestedIdentifier)
        XCTAssert(secondView as Any is CustomEmptyTableViewHeaderFooterView)
    }

    func testCollectionViewReusableView() {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView.register(CustomCollectionReusableView.self)
    }

    func testEmptyCollectionViewReusableView() {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView.register(CustomEmptyCollectionReusableView.self)
    }

}
