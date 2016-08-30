//
//  TestFont.swift
//  Overlay
//
//  Created by Justin Jia on 8/24/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class TestFont {
    
    static let first = UIFont.preferredFont(forTextStyle: .body)
    static let second = UIFont.preferredFont(forTextStyle: .callout)
    static let third = UIFont.preferredFont(forTextStyle: .caption1)
    static let fourth = UIFont.preferredFont(forTextStyle: .caption2)
    static let fifth = UIFont.preferredFont(forTextStyle: .footnote)
    
    static let group = FontGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let minimalGroup = FontGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)
    
}
