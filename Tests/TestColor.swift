//
//  TestColor.swift
//  Overlay
//
//  Created by Justin Jia on 8/24/16.
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
    static let minimalGroup = ColorGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)
    
}
