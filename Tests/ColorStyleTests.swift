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
    
    let normal = UIColor.white
    let disabled = UIColor.black
    let selected = UIColor.blue
    let highlighted = UIColor.yellow
    let focused = UIColor.red

    func testStyle() {
        XCTAssertEqual(normal, normal.normal())
    }
    
    func testGroup() {
        let group = ColorGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
        XCTAssertEqual(normal.normal(), group.normal())
        XCTAssertEqual(disabled.normal(), group.disabled())
        XCTAssertEqual(selected.normal(), group.selected())
        XCTAssertEqual(highlighted.normal(), group.highlighted())
        XCTAssertEqual(focused.normal(), group.focused())
        
        let nilGroup = ColorGroup(normal: normal, disabled: nil, selected: nil, highlighted: nil, focused: nil)
        XCTAssertEqual(normal.normal(), nilGroup.normal())
        XCTAssertNil(nilGroup.disabled())
        XCTAssertNil(nilGroup.selected())
        XCTAssertNil(nilGroup.highlighted())
        XCTAssertNil(nilGroup.focused())
    }
    
}
