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

    func refresh(includingSubviews: Bool = false) {}
}

class TestColorView: TestView, ColorStyleRepresentable {
    var normal: UIColor?
    var disabled: UIColor?
    var selected: UIColor?
    var highlighted: UIColor?
    var focused: UIColor?

    func setColor(_ color: UIColor?, for state: UIControl.State) {
        switch state {
        case .normal: normal = color
        case .disabled: disabled = color
        case .selected: selected = color
        case .highlighted: highlighted = color
        case .focused: focused = color
        default: return
        }
    }
}

class TestFontView: TestView, FontStyleRepresentable {}

class TestImageView: TestView, ImageStyleRepresentable {
    var normal: UIImage?
    var disabled: UIImage?
    var selected: UIImage?
    var highlighted: UIImage?
    var focused: UIImage?

    func setImage(_ image: UIImage?, for state: UIControl.State) {
        switch state {
        case .normal: normal = image
        case .disabled: disabled = image
        case .selected: selected = image
        case .highlighted: highlighted = image
        case .focused: focused = image
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

    func setText(_ text: String?, for state: UIControl.State) {
        switch state {
        case .normal: normal = text
        case .disabled: disabled = text
        case .selected: selected = text
        case .highlighted: highlighted = text
        case .focused: focused = text
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

    func setTextAlignment(_ textAlignment: NSTextAlignment?, for state: UIControl.State) {
        switch state {
        case .normal: normal = textAlignment
        case .disabled: disabled = textAlignment
        case .selected: selected = textAlignment
        case .highlighted: highlighted = textAlignment
        case .focused: focused = textAlignment
        default: return
        }
    }
}
