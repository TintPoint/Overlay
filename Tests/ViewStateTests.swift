//
//  ViewStateTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/24/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class ViewStateTest: XCTestCase {
    
    func testViewDisable() {
        XCTAssertTrue(UIBarItem() as Any is ViewDisable)
        XCTAssertTrue(UIControl() as Any is ViewDisable)
        XCTAssertTrue(UILabel() as Any is ViewDisable)
    }
    
    func testViewSelectable() {
        XCTAssertTrue(UIControl() as Any is ViewSelectable)
        XCTAssertTrue(UITableViewCell() as Any is ViewSelectable)
    }
    
    func testViewHighlightable() {
        XCTAssertTrue(UIControl() as Any is ViewHighlightable)
        XCTAssertTrue(UITableViewCell() as Any is ViewHighlightable)
        XCTAssertTrue(UILabel() as Any is ViewHighlightable)
        XCTAssertTrue(UIImageView() as Any is ViewHighlightable)
    }
    
    func testViewFocusable() {
        XCTAssertTrue(UIView() as Any is ViewFocusable)
    }
    
}
