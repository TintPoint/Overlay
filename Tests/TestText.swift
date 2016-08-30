//
//  TestText.swift
//  Overlay
//
//  Created by Justin Jia on 8/28/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class TestText {

    static let first = "First"
    static let second = "Second"
    static let third = "Third"
    static let fourth = "Fourth"
    static let fifth = "Fifth"

    static let group = TextGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let minimalGroup = TextGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)
    
}
