//
//  CustomText.swift
//  Overlay
//
//  Created by Justin Jia on 8/29/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its placeholder will be customized.
public protocol CustomPlaceholder: PlaceholderCustomizable {

    /// The `TextStyle` that represents the placeholder.
    var placeholderStyle: TextStyle { get }

}

/// A protocol that describes a view that its prompt will be customized.
public protocol CustomPrompt: PromptCustomizable {

    /// The `TextStyle` that represents the prompt.
    var promptStyle: TextStyle { get }

}

/// A protocol that describes a view that its titles of the segments will be customized.
public protocol CustomSegmentTitles: SegmentTitlesCustomizable {

    /// The array of `TextStyle` that represents the titles of the segments.
    /// The indexes of the array is used to identify the segments in the control, from left to right.
    /// Styles which their indexes exceeding the number of segments are ignored.
    var segmentTitleStyles: [TextStyle] { get }

}

/// A protocol that describes a view that its titles of the scope buttons will be customized.
public protocol CustomScopeButtonTitles: ScopeButtonTitlesCustomizable {

    /// The array of `TextStyle` that represents the titles of the scope buttons.
    /// The indexes of the array is used to identify the buttons in the control, from left to right.
    var scopeButtonTitleStyles: [TextStyle] { get }

}

/// A protocol that describes a view that its text will be customized.
public protocol CustomText: TextCustomizable {

    /// The `TextStyle` that represents the text.
    var textStyle: TextStyle { get }

}

/// A protocol that describes a view that its title will be customized.
public protocol CustomTitle: TitleCustomizable {

    /// The `TextStyle` that represents the title.
    var titleStyle: TextStyle { get }

}
