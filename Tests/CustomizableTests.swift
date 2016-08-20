//
//  CustomizableTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class PrototypeView: ViewCustomizable, ViewDisable, ViewSelectable, ViewHighlightable, ViewFocusable {
    
    let isEnabled: Bool
    let isSelected: Bool
    let isHighlighted: Bool
    let isFocused: Bool
    
    init(enabled: Bool = true, selected: Bool = false, highlighted: Bool = false, focused: Bool = false) {
        isEnabled = enabled
        isSelected = selected
        isHighlighted = highlighted
        isFocused = focused
    }

    func refresh() { }
}

class PrototypeColorView: PrototypeView {
    
    var normal: UIColor?
    var disabled: UIColor?
    var selected: UIColor?
    var highlighted: UIColor?
    var focused: UIColor?
    
    func set(_ color: UIColor?, for state: UIControlState) {
        switch state.rawValue {
        case UIControlState.normal.rawValue: normal = color
        case UIControlState.disabled.rawValue: disabled = color
        case UIControlState.selected.rawValue: selected = color
        case UIControlState.highlighted.rawValue: highlighted = color
        case UIControlState.focused.rawValue: focused = color
        default: return
        }
    }

}

class PrototypeImageView: PrototypeView {
    
    var normal: UIImage?
    var disabled: UIImage?
    var selected: UIImage?
    var highlighted: UIImage?
    var focused: UIImage?
    
    func set(_ image: UIImage?, for state: UIControlState) {
        switch state.rawValue {
        case UIControlState.normal.rawValue: normal = image
        case UIControlState.disabled.rawValue: disabled = image
        case UIControlState.selected.rawValue: selected = image
        case UIControlState.highlighted.rawValue: highlighted = image
        case UIControlState.focused.rawValue: focused = image
        default: return
        }
    }
    
}

class CustomizableTests: XCTestCase {
    
    let normalView = PrototypeView()
    let disabledView = PrototypeView(enabled: false)
    let selectedView = PrototypeView(selected: true)
    let highlightedView = PrototypeView(highlighted: true)
    let focusedView = PrototypeView(focused: true)
    
    func testSelectedColor() {
        typealias Resource = TestColor
        
        XCTAssertEqual(Resource.first, normalView.selected(Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selected(Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selected(Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selected(Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selected(Resource.first))
        
        XCTAssertEqual(Resource.first, normalView.selected(Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selected(Resource.group)!)
        XCTAssertEqual(Resource.third, selectedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.fourth, highlightedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.fifth, focusedView.selected(Resource.group)!)
    }
    
    func testSelectedFont() {
        typealias Resource = TestFont
        
        XCTAssertEqual(Resource.first, normalView.selected(Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selected(Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selected(Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selected(Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selected(Resource.first))
        
        XCTAssertEqual(Resource.first, normalView.selected(Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selected(Resource.group)!)
        XCTAssertEqual(Resource.third, selectedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.fourth, highlightedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.fifth, focusedView.selected(Resource.group)!)
    }

    func testSelectedImage() {
        typealias Resource = TestImage
        
        XCTAssertEqual(Resource.first, normalView.selected(Resource.first))
        XCTAssertEqual(Resource.first, disabledView.selected(Resource.first))
        XCTAssertEqual(Resource.first, selectedView.selected(Resource.first))
        XCTAssertEqual(Resource.first, highlightedView.selected(Resource.first))
        XCTAssertEqual(Resource.first, focusedView.selected(Resource.first))
        
        XCTAssertEqual(Resource.first, normalView.selected(Resource.group))
        XCTAssertEqual(Resource.second, disabledView.selected(Resource.group)!)
        XCTAssertEqual(Resource.third, selectedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.fourth, highlightedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.fifth, focusedView.selected(Resource.group)!)
    }
    
    func testSetColor() {
        typealias Resource = TestColor
        let view = PrototypeColorView()
        view.setColor(Resource.group, for: view.set)
        
        XCTAssertEqual(view.normal!, Resource.group.normal())
        XCTAssertEqual(view.disabled!, Resource.group.disabled()!)
        XCTAssertEqual(view.selected!, Resource.group.selected()!)
        XCTAssertEqual(view.highlighted!, Resource.group.highlighted()!)
        XCTAssertEqual(view.focused!, Resource.group.focused()!)
    }
    
    func testSetImage() {
        typealias Resource = TestImage
        let view = PrototypeImageView()
        view.setImage(Resource.group, for: view.set)
        
        XCTAssertEqual(view.normal!, Resource.group.normal())
        XCTAssertEqual(view.disabled!, Resource.group.disabled()!)
        XCTAssertEqual(view.selected!, Resource.group.selected()!)
        XCTAssertEqual(view.highlighted!, Resource.group.highlighted()!)
        XCTAssertEqual(view.focused!, Resource.group.focused()!)
    }
    
    func testSetEmptyColor() {
        typealias Resource = TestColor
        let view = PrototypeColorView()
        view.setColor(Resource.emptyGroup, for: view.set)
        
        XCTAssertEqual(view.normal!, Resource.group.normal())
        XCTAssertNil(view.disabled)
        XCTAssertNil(view.selected)
        XCTAssertNil(view.highlighted)
        XCTAssertNil(view.focused)
    }

    func testSetEmptyImage() {
        typealias Resource = TestImage
        let view = PrototypeImageView()
        view.setImage(Resource.emptyGroup, for: view.set)
        
        XCTAssertEqual(view.normal!, Resource.group.normal())
        XCTAssertNil(view.disabled)
        XCTAssertNil(view.selected)
        XCTAssertNil(view.highlighted)
        XCTAssertNil(view.focused)
    }

}