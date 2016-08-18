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
    
    let normal = UIFont.preferredFont(forTextStyle: .body)
    let disabled = UIFont.preferredFont(forTextStyle: .callout)
    let selected = UIFont.preferredFont(forTextStyle: .caption1)
    let highlighted = UIFont.preferredFont(forTextStyle: .caption2)
    let focused = UIFont.preferredFont(forTextStyle: .footnote)

    func testStyle() {
        XCTAssertEqual(normal, normal.normal())
    }
    
    func testGroup() {
        let group = FontGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
        XCTAssertEqual(normal.normal(), group.normal())
        XCTAssertEqual(disabled.normal(), group.disabled())
        XCTAssertEqual(selected.normal(), group.selected())
        XCTAssertEqual(highlighted.normal(), group.highlighted())
        XCTAssertEqual(focused.normal(), group.focused())
        
        let nilGroup = FontGroup(normal: normal, disabled: nil, selected: nil, highlighted: nil, focused: nil)
        XCTAssertEqual(normal.normal(), nilGroup.normal())
        XCTAssertNil(nilGroup.disabled())
        XCTAssertNil(nilGroup.selected())
        XCTAssertNil(nilGroup.highlighted())
        XCTAssertNil(nilGroup.focused())
    }
    
}
