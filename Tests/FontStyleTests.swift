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
    typealias View = TestFontView

    let normalView = View()
    let disabledView = View(enabled: false)
    let selectedView = View(selected: true)
    let highlightedView = View(highlighted: true)
    let focusedView = View(focused: true)

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
    
    func testminimalGroup() {
        XCTAssertEqual(Resource.first.normal(), Resource.minimalGroup.normal())
        XCTAssertNil(Resource.minimalGroup.disabled())
        XCTAssertNil(Resource.minimalGroup.selected())
        XCTAssertNil(Resource.minimalGroup.highlighted())
        XCTAssertNil(Resource.minimalGroup.focused())
    }

    func testSelectedFont() {
        XCTAssertEqual(Resource.first, normalView.selectedFont(from: Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selectedFont(from: Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selectedFont(from: Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selectedFont(from: Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selectedFont(from: Resource.first))

        XCTAssertEqual(Resource.first, normalView.selectedFont(from: Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selectedFont(from: Resource.group))
        XCTAssertEqual(Resource.third, selectedView.selectedFont(from: Resource.group))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedFont(from: Resource.group))
        XCTAssertEqual(Resource.fifth, focusedView.selectedFont(from: Resource.group))

        XCTAssertEqual(Resource.first, normalView.selectedFont(from: Resource.first, usingNormalFor: [.normal]))
        XCTAssertEqual(Resource.first, disabledView.selectedFont(from: Resource.group, usingNormalFor: [.disabled]))
        XCTAssertEqual(Resource.first, selectedView.selectedFont(from: Resource.group, usingNormalFor: [.selected]))
        XCTAssertEqual(Resource.first, highlightedView.selectedFont(from: Resource.group, usingNormalFor: [.highlighted]))
        XCTAssertEqual(Resource.first, focusedView.selectedFont(from: Resource.group, usingNormalFor: [.focused]))

        XCTAssertEqual(Resource.first, normalView.selectedFont(from: Resource.group, usingNormalFor: [.disabled, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.second, disabledView.selectedFont(from: Resource.group, usingNormalFor: [.normal, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.third, selectedView.selectedFont(from: Resource.group, usingNormalFor: [.normal, .disabled, .highlighted, .focused]))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedFont(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .focused]))
        XCTAssertEqual(Resource.fifth, focusedView.selectedFont(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .highlighted]))
    }

}
