//
//  Resource.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class TestColor {
    
    static let first = UIColor.white
    static let second = UIColor.black
    static let third = UIColor.blue
    static let fourth = UIColor.yellow
    static let fifth = UIColor.red
    
    static let group = ColorGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let emptyGroup = ColorGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)

    
}

class TestFont {
    
    static let first = UIFont.preferredFont(forTextStyle: .body)
    static let second = UIFont.preferredFont(forTextStyle: .callout)
    static let third = UIFont.preferredFont(forTextStyle: .caption1)
    static let fourth = UIFont.preferredFont(forTextStyle: .caption2)
    static let fifth = UIFont.preferredFont(forTextStyle: .footnote)
    
    static let group = FontGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let emptyGroup = FontGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)

}

class TestImage {
    
    static let first = UIImage(named: "White", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let second = UIImage(named: "Black", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let third = UIImage(named: "Blue", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let fourth = UIImage(named: "Yellow", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let fifth = UIImage(named: "Red", in: Bundle(for: TestImage.self), compatibleWith: nil)!

    static let group = ImageGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let emptyGroup = ImageGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)


}
