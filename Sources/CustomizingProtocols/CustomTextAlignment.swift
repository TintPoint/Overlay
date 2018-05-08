//
//  CustomTextAlignment.swift
//  Overlay
//
//  Created by Justin Jia on 1/10/17.
//  Copyright © 2017 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its alignment of text will be customized.
public protocol CustomTextAlignment: TextAlignmentCustomizable {
    /// The `TextAlignmentStyle` that represents the alignment of text.
    var textAlignmentStyle: TextAlignmentStyle { get }
}

/// A protocol that describes a view that its alignment of title text will be customized.
public protocol CustomTitleTextAlignment: TitleTextAlignmentCustomizable {
    /// The `TextAlignmentStyle` that represents the alignment of title text.
    var titleTextAlignmentStyle: TextAlignmentStyle { get }
}
