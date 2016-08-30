//
//  TextStyleTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/28/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class TextStyleTests: XCTestCase {

    typealias Resource = TestText
    typealias View = TestTextView

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

    func testSelectedText() {
        XCTAssertEqual(Resource.first, normalView.selectedText(from: Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selectedText(from: Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selectedText(from: Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selectedText(from: Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selectedText(from: Resource.first))

        XCTAssertEqual(Resource.first, normalView.selectedText(from: Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selectedText(from: Resource.group))
        XCTAssertEqual(Resource.third, selectedView.selectedText(from: Resource.group))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedText(from: Resource.group))
        XCTAssertEqual(Resource.fifth, focusedView.selectedText(from: Resource.group))

        XCTAssertEqual(Resource.first, normalView.selectedText(from: Resource.first, usingNormalFor: [.normal]))
        XCTAssertEqual(Resource.first, disabledView.selectedText(from: Resource.group, usingNormalFor: [.disabled]))
        XCTAssertEqual(Resource.first, selectedView.selectedText(from: Resource.group, usingNormalFor: [.selected]))
        XCTAssertEqual(Resource.first, highlightedView.selectedText(from: Resource.group, usingNormalFor: [.highlighted]))
        XCTAssertEqual(Resource.first, focusedView.selectedText(from: Resource.group, usingNormalFor: [.focused]))

        XCTAssertEqual(Resource.first, normalView.selectedText(from: Resource.group, usingNormalFor: [.disabled, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.second, disabledView.selectedText(from: Resource.group, usingNormalFor: [.normal, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.third, selectedView.selectedText(from: Resource.group, usingNormalFor: [.normal, .disabled, .highlighted, .focused]))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedText(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .focused]))
        XCTAssertEqual(Resource.fifth, focusedView.selectedText(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .highlighted]))
    }

    func testCustomizeText() {
        let view = View()
        view.customizeText(using: Resource.group, through: view.setText)

        XCTAssertEqual(view.normal, Resource.group.normal())
        XCTAssertEqual(view.disabled, Resource.group.disabled())
        XCTAssertEqual(view.selected, Resource.group.selected())
        XCTAssertEqual(view.highlighted, Resource.group.highlighted())
        XCTAssertEqual(view.focused, Resource.group.focused())
    }


    func testCustomizeMinimalText() {
        let view = View()
        view.customizeText(using: Resource.minimalGroup, through: view.setText)

        XCTAssertEqual(view.normal, Resource.group.normal())
        XCTAssertNil(view.disabled)
        XCTAssertNil(view.selected)
        XCTAssertNil(view.highlighted)
        XCTAssertNil(view.focused)
    }
    
}
