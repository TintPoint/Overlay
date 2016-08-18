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
    
    let normal = UIImage(named: "White", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
    let disabled = UIImage(named: "Black", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
    let selected = UIImage(named: "Blue", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
    let highlighted = UIImage(named: "Yellow", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
    let focused = UIImage(named: "Red", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!

    func testStyle() {
        XCTAssertEqual(normal, normal.normal())
    }
    
    func testGroup() {
        let group = ImageGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
        XCTAssertEqual(normal.normal(), group.normal())
        XCTAssertEqual(disabled.normal(), group.disabled())
        XCTAssertEqual(selected.normal(), group.selected())
        XCTAssertEqual(highlighted.normal(), group.highlighted())
        XCTAssertEqual(focused.normal(), group.focused())
        
        let nilGroup = ImageGroup(normal: normal, disabled: nil, selected: nil, highlighted: nil, focused: nil)
        XCTAssertEqual(normal.normal(), nilGroup.normal())
        XCTAssertNil(nilGroup.disabled())
        XCTAssertNil(nilGroup.selected())
        XCTAssertNil(nilGroup.highlighted())
        XCTAssertNil(nilGroup.focused())
    }
    
}
