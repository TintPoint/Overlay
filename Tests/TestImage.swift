//
//  TestImage.swift
//  Overlay
//
//  Created by Justin Jia on 8/19/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import Overlay

class TestImage {
    
    static let first = UIImage(named: "White", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let second = UIImage(named: "Black", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let third = UIImage(named: "Blue", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let fourth = UIImage(named: "Yellow", in: Bundle(for: TestImage.self), compatibleWith: nil)!
    static let fifth = UIImage(named: "Red", in: Bundle(for: TestImage.self), compatibleWith: nil)!

    static let group = ImageGroup(normal: first, disabled: second, selected: third, highlighted: fourth, focused: fifth)
    static let minimalGroup = ImageGroup(normal: first, disabled: nil, selected: nil, highlighted: nil, focused: nil)

}
