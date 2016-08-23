//
//  FontStyleTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class FontStyleTests: XCTestCase {
    
    typealias Resource = TestFont
    
    func testStyle() {
        XCTAssertEqual(Resource.first, Resource.first.normal())
    }
    
    func testGroup() {
        XCTAssertEqual(Resource.first.normal(), Resource.group.normal())
        XCTAssertEqual(Resource.second.normal(), Resource.group.disabled())
        XCTAssertEqual(Resource.third.normal(), Resource.group.selected())
        XCTAssertEqual(Resource.fourth.normal(), Resource.group.highlighted())
        XCTAssertEqual(Resource.fifth.normal(), Resource.group.focused())
    }
    
    func testMinimumGroup() {
        XCTAssertEqual(Resource.first.normal(), Resource.minimumGroup.normal())
        XCTAssertNil(Resource.minimumGroup.disabled())
        XCTAssertNil(Resource.minimumGroup.selected())
        XCTAssertNil(Resource.minimumGroup.highlighted())
        XCTAssertNil(Resource.minimumGroup.focused())
    }
    
}
