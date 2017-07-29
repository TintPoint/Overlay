//
//  TestView.swift
//  Tests
//
//  Created by Justin Jia on 8/27/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class TestView: ViewDisable, ViewSelectable, ViewHighlightable, ViewFocusable {

    var isEnabled: Bool
    var isSelected: Bool
    var isHighlighted: Bool
    var isFocused: Bool

    init(enabled: Bool = true, selected: Bool = false, highlighted: Bool = false, focused: Bool = false) {
        isEnabled = enabled
        isSelected = selected
        isHighlighted = highlighted
        isFocused = focused
    }

    func refresh(includingSubviews: Bool = false) { }

}

class TestColorView: TestView, ColorStyleRepresentable {

    var normal: UIColor?
    var disabled: UIColor?
    var selected: UIColor?
    var highlighted: UIColor?
    var focused: UIColor?

    func setColor(_ color: UIColor?, for state: UIControlState) {
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

class TestFontView: TestView, FontStyleRepresentable { }

class TestImageView: TestView, ImageStyleRepresentable {

    var normal: UIImage?
    var disabled: UIImage?
    var selected: UIImage?
    var highlighted: UIImage?
    var focused: UIImage?

    func setImage(_ image: UIImage?, for state: UIControlState) {
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

class TestTextView: TestView, TextStyleRepresentable {

    var normal: String?
    var disabled: String?
    var selected: String?
    var highlighted: String?
    var focused: String?

    func setText(_ text: String?, for state: UIControlState) {
        switch state.rawValue {
        case UIControlState.normal.rawValue: normal = text
        case UIControlState.disabled.rawValue: disabled = text
        case UIControlState.selected.rawValue: selected = text
        case UIControlState.highlighted.rawValue: highlighted = text
        case UIControlState.focused.rawValue: focused = text
        default: return
        }
    }

}

class TestTextAlignmentView: TestView, TextAlignmentStyleRepresentable {

    var normal: NSTextAlignment?
    var disabled: NSTextAlignment?
    var selected: NSTextAlignment?
    var highlighted: NSTextAlignment?
    var focused: NSTextAlignment?

    func setTextAlignment(_ textAlignment: NSTextAlignment?, for state: UIControlState) {
        switch state.rawValue {
        case UIControlState.normal.rawValue: normal = textAlignment
        case UIControlState.disabled.rawValue: disabled = textAlignment
        case UIControlState.selected.rawValue: selected = textAlignment
        case UIControlState.highlighted.rawValue: highlighted = textAlignment
        case UIControlState.focused.rawValue: focused = textAlignment
        default: return
        }
    }

}
