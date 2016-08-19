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
        
        XCTAssertEqual(Resource.normal, normalView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, disabledView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, selectedView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, highlightedView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, focusedView.selected(Resource.normal))
        
        XCTAssertEqual(Resource.normal, normalView.selected(Resource.group))
        XCTAssertEqual(Resource.disabled, disabledView.selected(Resource.group)!)
        XCTAssertEqual(Resource.selected, selectedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.highlighted, highlightedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.focused, focusedView.selected(Resource.group)!)
    }
    
    func testSelectedFont() {
        typealias Resource = TestFont
        
        XCTAssertEqual(Resource.normal, normalView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, disabledView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, selectedView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, highlightedView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, focusedView.selected(Resource.normal))
        
        XCTAssertEqual(Resource.normal, normalView.selected(Resource.group))
        XCTAssertEqual(Resource.disabled, disabledView.selected(Resource.group)!)
        XCTAssertEqual(Resource.selected, selectedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.highlighted, highlightedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.focused, focusedView.selected(Resource.group)!)
    }

    func testSelectedImage() {
        typealias Resource = TestImage
        
        XCTAssertEqual(Resource.normal, normalView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, disabledView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, selectedView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, highlightedView.selected(Resource.normal))
        XCTAssertEqual(Resource.normal, focusedView.selected(Resource.normal))
        
        XCTAssertEqual(Resource.normal, normalView.selected(Resource.group))
        XCTAssertEqual(Resource.disabled, disabledView.selected(Resource.group)!)
        XCTAssertEqual(Resource.selected, selectedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.highlighted, highlightedView.selected(Resource.group)!)
        XCTAssertEqual(Resource.focused, focusedView.selected(Resource.group)!)
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
