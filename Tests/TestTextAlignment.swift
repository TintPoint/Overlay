//
//  TestTextAlignment.swift
//  Tests
//
//  Created by Justin Jia on 1/10/17.
//  Copyright © 2017 TintPoint. MIT license.
//

import Overlay

class TestTextAlignment {

    static let first = NSTextAlignment.natural
    static let second = NSTextAlignment.justified
    static let third = NSTextAlignment.left
    static let fourth = NSTextAlignment.center
    static let fifth = NSTextAlignment.right

    static let group = TextAlignmentGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let minimalGroup = TextAlignmentGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)
    
}
