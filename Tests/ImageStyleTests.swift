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
    typealias View = TestImageView

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

    func testSelectedImage() {
        XCTAssertEqual(Resource.first, normalView.selectedImage(from: Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selectedImage(from: Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selectedImage(from: Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selectedImage(from: Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selectedImage(from: Resource.first))

        XCTAssertEqual(Resource.first, normalView.selectedImage(from: Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selectedImage(from: Resource.group))
        XCTAssertEqual(Resource.third, selectedView.selectedImage(from: Resource.group))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedImage(from: Resource.group))
        XCTAssertEqual(Resource.fifth, focusedView.selectedImage(from: Resource.group))

        XCTAssertEqual(Resource.first, normalView.selectedImage(from: Resource.first, usingNormalFor: [.normal]))
        XCTAssertEqual(Resource.first, disabledView.selectedImage(from: Resource.group, usingNormalFor: [.disabled]))
        XCTAssertEqual(Resource.first, selectedView.selectedImage(from: Resource.group, usingNormalFor: [.selected]))
        XCTAssertEqual(Resource.first, highlightedView.selectedImage(from: Resource.group, usingNormalFor: [.highlighted]))
        XCTAssertEqual(Resource.first, focusedView.selectedImage(from: Resource.group, usingNormalFor: [.focused]))

        XCTAssertEqual(Resource.first, normalView.selectedImage(from: Resource.group, usingNormalFor: [.disabled, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.second, disabledView.selectedImage(from: Resource.group, usingNormalFor: [.normal, .selected, .highlighted, .focused]))
        XCTAssertEqual(Resource.third, selectedView.selectedImage(from: Resource.group, usingNormalFor: [.normal, .disabled, .highlighted, .focused]))
        XCTAssertEqual(Resource.fourth, highlightedView.selectedImage(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .focused]))
        XCTAssertEqual(Resource.fifth, focusedView.selectedImage(from: Resource.group, usingNormalFor: [.normal, .disabled, .selected, .highlighted]))
    }

    func testCustomizeImage() {
        let view = View()
        view.customizeImage(using: Resource.group, through: view.setImage)

        XCTAssertEqual(view.normal, Resource.group.normal())
        XCTAssertEqual(view.disabled, Resource.group.disabled())
        XCTAssertEqual(view.selected, Resource.group.selected())
        XCTAssertEqual(view.highlighted, Resource.group.highlighted())
        XCTAssertEqual(view.focused, Resource.group.focused())
    }


    func testCustomizeMinimalImage() {
        let view = View()
        view.customizeImage(using: Resource.minimalGroup, through: view.setImage)

        XCTAssertEqual(view.normal, Resource.group.normal())
        XCTAssertNil(view.disabled)
        XCTAssertNil(view.selected)
        XCTAssertNil(view.highlighted)
        XCTAssertNil(view.focused)
    }

}
