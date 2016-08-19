//
//  Resource.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class TestColor {
    
    static let normal = UIColor.white
    static let disabled = UIColor.black
    static let selected = UIColor.blue
    static let highlighted = UIColor.yellow
    static let focused = UIColor.red
    
    static let group = ColorGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
    static let emptyGroup = ColorGroup(normal: normal, disabled: nil, selected: nil, highlighted: nil, focused: nil)

    
}

class TestFont {
    
    static let normal = UIFont.preferredFont(forTextStyle: .body)
    static let disabled = UIFont.preferredFont(forTextStyle: .callout)
    static let selected = UIFont.preferredFont(forTextStyle: .caption1)
    static let highlighted = UIFont.preferredFont(forTextStyle: .caption2)
    static let focused = UIFont.preferredFont(forTextStyle: .footnote)
    
    static let group = FontGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
    static let emptyGroup = FontGroup(normal: normal, disabled: nil, selected: nil, highlighted: nil, focused: nil)

}

class TestImage {
    
    static let normal = UIImage(named: "White", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let disabled = UIImage(named: "Black", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let selected = UIImage(named: "Blue", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let highlighted = UIImage(named: "Yellow", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let focused = UIImage(named: "Red", in: Bundle(for: TestImage.self), compatibleWith: nil)!

    static let group = ImageGroup(normal: normal, disabled: disabled, selected: selected, highlighted: highlighted, focused: focused)
    static let emptyGroup = ImageGroup(normal: normal, disabled: nil, selected: nil, highlighted: nil, focused: nil)


}
