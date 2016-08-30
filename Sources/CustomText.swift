//
//  CustomText.swift
//  Overlay
//
//  Created by Justin Jia on 8/29/16.
//  Copyright © 2016 TintPoint. All rights reserved.
//

import UIKit

/// A protocol that describes a view that its placeholder will be customized.
public protocol CustomPlaceholder: PlaceholderCustomizable {

    /// The `TextStyle` that describes the placeholder.
    var placeholderStyle: TextStyle { get }

}

/// A protocol that describes a view that its prompt will be customized.
public protocol CustomPrompt: PromptCustomizable {

    /// The `TextStyle` that describes the prompt.
    var promptStyle: TextStyle { get }

}

/// A protocol that describes a view that its titles of the segments will be customized.
public protocol CustomSegmentTitles: SegmentTitlesCustomizable {

    /// The array of `TextStyle` that describes the titles of the segments.
    var segmentTitleStyles: [TextStyle] { get }

}

/// A protocol that describes a view that its titles of the scope buttons will be customized.
public protocol CustomScopeButtonTitles: ScopeButtonTitlesCustomizable {

    /// The array of `TextStyle` that describes the titles of the scope buttons.
    var scopeButtonTitleStyles: [TextStyle] { get }

}

/// A protocol that describes a view that its text will be customized.
public protocol CustomText: TextCustomizable {

    /// The `TextStyle` that describes the text.
    var textStyle: TextStyle { get }

}

/// A protocol that describes a view that its title will be customized.
public protocol CustomTitle: TitleCustomizable {

    /// The `TextStyle` that describes the title.
    var titleStyle: TextStyle { get }
    
}
