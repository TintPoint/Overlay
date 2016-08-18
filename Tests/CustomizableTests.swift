//
//  CustomizableTests.swift
//  Overlay
//
//  Created by Justin Jia on 8/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class CustomizableTests: XCTestCase {

    struct PrototypeView: ViewCustomizable, ViewDisable, ViewSelectable, ViewHighlightable, ViewFocusable {
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
    
    let normalView = PrototypeView()
    let disabledView = PrototypeView(enabled: false)
    let selectedView = PrototypeView(selected: true)
    let highlightedView = PrototypeView(highlighted: true)
    let focusedView = PrototypeView(focused: true)
    
    func testSelectedColor() {
        let normal = UIColor.white
        let disabled = UIColor.black
        let selected = UIColor.blue
        let highlighted = UIColor.yellow
        let focused = UIColor.red
        let group = ColorGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
        
        XCTAssertEqual(normal, normalView.selected(normal))
        XCTAssertEqual(normal, disabledView.selected(normal))
        XCTAssertEqual(normal, selectedView.selected(normal))
        XCTAssertEqual(normal, highlightedView.selected(normal))
        XCTAssertEqual(normal, focusedView.selected(normal))
        
        XCTAssertEqual(normal, normalView.selected(group))
        XCTAssertEqual(disabled, disabledView.selected(group)!)
        XCTAssertEqual(selected, selectedView.selected(group)!)
        XCTAssertEqual(highlighted, highlightedView.selected(group)!)
        XCTAssertEqual(focused, focusedView.selected(group)!)
    }
    
    func testSelectedFont() {
        let normal = UIFont.preferredFont(forTextStyle: .body)
        let disabled = UIFont.preferredFont(forTextStyle: .callout)
        let selected = UIFont.preferredFont(forTextStyle: .caption1)
        let highlighted = UIFont.preferredFont(forTextStyle: .caption2)
        let focused = UIFont.preferredFont(forTextStyle: .footnote)
        let group = FontGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
        
        XCTAssertEqual(normal, normalView.selected(normal))
        XCTAssertEqual(normal, disabledView.selected(normal)!)
        XCTAssertEqual(normal, selectedView.selected(normal)!)
        XCTAssertEqual(normal, highlightedView.selected(normal)!)
        XCTAssertEqual(normal, focusedView.selected(normal)!)
        
        XCTAssertEqual(normal, normalView.selected(group))
        XCTAssertEqual(disabled, disabledView.selected(group)!)
        XCTAssertEqual(selected, selectedView.selected(group)!)
        XCTAssertEqual(highlighted, highlightedView.selected(group)!)
        XCTAssertEqual(focused, focusedView.selected(group)!)
    }

    func testSelectedImage() {
        let normal = UIImage(named: "White", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let disabled = UIImage(named: "Black", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let selected = UIImage(named: "Blue", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let highlighted = UIImage(named: "Yellow", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let focused = UIImage(named: "Red", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let group = ImageGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
        
        XCTAssertEqual(normal, normalView.selected(normal))
        XCTAssertEqual(normal, disabledView.selected(normal))
        XCTAssertEqual(normal, selectedView.selected(normal))
        XCTAssertEqual(normal, highlightedView.selected(normal))
        XCTAssertEqual(normal, focusedView.selected(normal))
        
        XCTAssertEqual(normal, normalView.selected(group))
        XCTAssertEqual(disabled, disabledView.selected(group)!)
        XCTAssertEqual(selected, selectedView.selected(group)!)
        XCTAssertEqual(highlighted, highlightedView.selected(group)!)
        XCTAssertEqual(focused, focusedView.selected(group)!)
    }

}
