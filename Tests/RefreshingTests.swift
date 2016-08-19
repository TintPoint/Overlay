//
//  RefreshingTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomLayoutTests: XCTestCase {
    
    func testView() {
        let view = CustomView()
        view.refresh()
        XCTAssertNotNil(view.subviews.first)
        XCTAssertEqual(view.tintColor, TestColor.normal)
        XCTAssertEqual(view.layer.borderColor, TestColor.disabled.cgColor)
        XCTAssertEqual(view.backgroundColor, TestColor.selected)
    }
    
}
