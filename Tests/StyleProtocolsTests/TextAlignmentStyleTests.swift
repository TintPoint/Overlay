//
//  TextAlignmentStyleTests.swift
//  Tests
//
//  Created by Justin Jia on 1/10/17.
//  Copyright © 2017 TintPoint. MIT license.
//

@testable import Overlay
import XCTest

class TextAlignmentStyleTests: XCTestCase {
    typealias Resource = TestTextAlignment
    typealias View = TestTextAlignmentView

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

    func testSelectedTextAlignment() {
        XCTAssertEqual(Resource.first, normalView.selectedTextAlignment(from: Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selectedTextAlignment(from: Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selectedTextAlignment(from: Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selectedTextAlignment(from: Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selectedTextAlignment(from: Resource.first))

        XCTAssertEqual(Resource.first, normalView.selectedTextAlignment(from: Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selectedTextAlignment(from: Resource.group))
        XCTAssertEqual(Resource.third, selectedView.selectedTextAlignment(from: Resource.group))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedTextAlignment(from: Resource.group))
        XCTAssertEqual(Resource.fifth, focusedView.selectedTextAlignment(from: Resource.group))

        XCTAssertEqual(Resource.first, normalView.selectedTextAlignment(from: Resource.first, usingNormalFor: [.normal]))
        XCTAssertEqual(Resource.first, disabledView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.disabled]))
        XCTAssertEqual(Resource.first, selectedView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.selected]))
        XCTAssertEqual(Resource.first, highlightedView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.highlighted]))
        XCTAssertEqual(Resource.first, focusedView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.focused]))

        XCTAssertEqual(Resource.first, normalView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.disabled, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.second, disabledView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.normal, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.third, selectedView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.normal, .disabled, .highlighted, .focused]))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .focused]))
        XCTAssertEqual(Resource.fifth, focusedView.selectedTextAlignment(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .highlighted]))
    }
}
