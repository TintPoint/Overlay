//
//  ImageStyleTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class ImageStyleTests: XCTestCase {
    
    typealias Resource = TestImage
    
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
    
    func testEmptyGroup() {
        XCTAssertEqual(Resource.first.normal(), Resource.emptyGroup.normal())
        XCTAssertNil(Resource.emptyGroup.disabled())
        XCTAssertNil(Resource.emptyGroup.selected())
        XCTAssertNil(Resource.emptyGroup.highlighted())
        XCTAssertNil(Resource.emptyGroup.focused())
    }
    
}
