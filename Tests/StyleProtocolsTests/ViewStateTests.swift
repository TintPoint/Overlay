//
//  ViewStateTests.swift
//  Tests
//
//  Created by Justin Jia on 8/24/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class ViewStateTest: XCTestCase {

    func testViewHideable() {
        XCTAssert(UIView() as Any is ViewHideable)
    }

    func testViewDisable() {
        XCTAssert(UIBarItem() as Any is ViewDisable)
        XCTAssert(UIControl() as Any is ViewDisable)
        XCTAssert(UILabel() as Any is ViewDisable)
    }

    func testViewSelectable() {
        XCTAssert(UIControl() as Any is ViewSelectable)
        XCTAssert(UITableViewCell() as Any is ViewSelectable)
    }

    func testViewHighlightable() {
        XCTAssert(UIControl() as Any is ViewHighlightable)
        XCTAssert(UITableViewCell() as Any is ViewHighlightable)
        XCTAssert(UILabel() as Any is ViewHighlightable)
        XCTAssert(UIImageView() as Any is ViewHighlightable)
    }

    func testViewFocusable() {
        XCTAssert(UIView() as Any is ViewFocusable)
    }

}
