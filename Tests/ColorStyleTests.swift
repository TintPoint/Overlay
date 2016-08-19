//
//  ColorStyleTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class ColorStyleTests: XCTestCase {

    typealias Resource = TestColor

    func testStyle() {
        XCTAssertEqual(Resource.normal, Resource.normal.normal())
    }
    
    func testGroup() {
        XCTAssertEqual(Resource.normal.normal(), Resource.group.normal())
        XCTAssertEqual(Resource.disabled.normal(), Resource.group.disabled())
        XCTAssertEqual(Resource.selected.normal(), Resource.group.selected())
        XCTAssertEqual(Resource.highlighted.normal(), Resource.group.highlighted())
        XCTAssertEqual(Resource.focused.normal(), Resource.group.focused())
    }
    
    func testEmptyGroup() {
        XCTAssertEqual(Resource.normal.normal(), Resource.emptyGroup.normal())
        XCTAssertNil(Resource.emptyGroup.disabled())
        XCTAssertNil(Resource.emptyGroup.selected())
        XCTAssertNil(Resource.emptyGroup.highlighted())
        XCTAssertNil(Resource.emptyGroup.focused())
    }
    
}
