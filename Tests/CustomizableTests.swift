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
        
        var normalColor: UIColor?
        var disabledColor: UIColor?
        var selectedColor: UIColor?
        var highlightedColor: UIColor?
        var focusedColor: UIColor?
        
        func setColor(color: UIColor, for state: UIControlState) {
            switch state.rawValue {
            case UIControlState.normal.rawValue: normalColor = color
            case UIControlState.disabled.rawValue: disabledColor = color
            case UIControlState.selected.rawValue: selectedColor = color
            case UIControlState.highlighted.rawValue: highlightedColor = color
            case UIControlState.focused.rawValue: focusedColor = color
            default: return
            }
        }
        
        var normalImage: UIImage?
        var disabledImage: UIImage?
        var selectedImage: UIImage?
        var highlightedImage: UIImage?
        var focusedImage: UIImage?
        
        func setImage(image: UIImage, for state: UIControlState) {
            switch state.rawValue {
            case UIControlState.normal.rawValue: normalImage = image
            case UIControlState.disabled.rawValue: disabledImage = image
            case UIControlState.selected.rawValue: selectedImage = image
            case UIControlState.highlighted.rawValue: highlightedImage = image
            case UIControlState.focused.rawValue: focusedImage = image
            default: return
            }
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
    
    func testSetColor() {
        let normal = UIColor.white
        let disabled = UIColor.black
        let selected = UIColor.blue
        let highlighted = UIColor.yellow
        let focused = UIColor.red

        let view = PrototypeView()
        view.setColor(color: normal, for: .normal)
        view.setColor(color: disabled, for: .disabled)
        view.setColor(color: selected, for: .selected)
        view.setColor(color: highlighted, for: .highlighted)
        view.setColor(color: focused, for: .focused)
        
        XCTAssertEqual(normal, view.normalColor!)
        XCTAssertEqual(disabled, view.disabledColor!)
        XCTAssertEqual(selected, view.selectedColor!)
        XCTAssertEqual(highlighted, view.highlightedColor!)
        XCTAssertEqual(focused, view.focusedColor!)
    }

    func testSetImage() {
        let normal = UIImage(named: "White", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let disabled = UIImage(named: "Black", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let selected = UIImage(named: "Blue", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let highlighted = UIImage(named: "Yellow", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        let focused = UIImage(named: "Red", in: Bundle(for: ImageStyleTests.self), compatibleWith: nil)!
        
        let view = PrototypeView()
        view.setImage(image: normal, for: .normal)
        view.setImage(image: disabled, for: .disabled)
        view.setImage(image: selected, for: .selected)
        view.setImage(image: highlighted, for: .highlighted)
        view.setImage(image: focused, for: .focused)
        
        XCTAssertEqual(normal, view.normalImage!)
        XCTAssertEqual(disabled, view.disabledImage!)
        XCTAssertEqual(selected, view.selectedImage!)
        XCTAssertEqual(highlighted, view.highlightedImage!)
        XCTAssertEqual(focused, view.focusedImage!)
    }

}
