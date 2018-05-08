//
//  CustomImage.swift
//  Overlay
//
//  Created by Justin Jia on 8/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its background image will be customized.
public protocol CustomBackgroundImage: BackgroundImageCustomizable {
    /// The `ImageStyle` that represents the background image.
    var backgroundImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its decrement image will be customized.
public protocol CustomDecrementImage: DecrementImageCustomizable {
    /// The `ImageStyle` that represents the decrement image.
    var decrementImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its highlighted image will be customized.
public protocol CustomHighlightedImage: HighlightedImageCustomizable {
    /// The `ImageStyle` that represents the highlighted image.
    var highlightedImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its image will be customized.
public protocol CustomImage: ImageCustomizable {
    /// The `ImageStyle` that represents the image.
    var imageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its increment image will be customized.
public protocol CustomIncrementImage: IncrementImageCustomizable {
    /// The `ImageStyle` that represents the increment image.
    var incrementImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its landscape image for iPhone will be customized.
public protocol CustomLandscapeImagePhone: LandscapeImagePhoneCustomizable {
    /// The `ImageStyle` that represents the landscape image for iPhone.
    var landscapeImagePhoneStyle: ImageStyle { get }
}

/// A protocol that describes a view that its maximum track image will be customized.
public protocol CustomMaximumTrackImage: MaximumTrackImageCustomizable {
    /// The `ImageStyle` that represents the maximum track image.
    var maximumTrackImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its maximum value image will be customized.
public protocol CustomMaximumValueImage: MaximumValueImageCustomizable {
    /// The `ImageStyle` that represents the maximum value image.
    var maximumValueImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its minimum track image will be customized.
public protocol CustomMinimumTrackImage: MinimumTrackImageCustomizable {
    /// The `ImageStyle` that represents the minimum track image.
    var minimumTrackImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its minimum value image will be customized.
public protocol CustomMinimumValueImage: MinimumValueImageCustomizable {
    /// The `ImageStyle` that represents the minimum value image.
    var minimumValueImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its off image will be customized.
public protocol CustomOffImage: OffImageCustomizable {
    /// The `ImageStyle` that represents the off image.
    var offImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its on image will be customized.
public protocol CustomOnImage: OnImageCustomizable {
    /// The `ImageStyle` that represents the on image.
    var onImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its progress image will be customized.
public protocol CustomProgressImage: ProgressImageCustomizable {
    /// The `ImageStyle` that represents the progress image.
    var progressImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its scope bar button background image will be customized.
public protocol CustomScopeBarButtonBackgroundImage: ScopeBarButtonBackgroundImageCustomizable {
    /// The `ImageStyle` that represents the scope bar button background image.
    var scopeBarButtonBackgroundImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its search field background image will be customized.
public protocol CustomSearchFieldBackgroundImage: SearchFieldBackgroundImageCustomizable {
    /// The `ImageStyle` that represents the search field background image.
    var searchFieldBackgroundImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its selected image will be customized.
public protocol CustomSelectedImage: SelectedImageCustomizable {
    /// The `ImageStyle` that represents the selected image.
    var selectedImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its shadow image will be customized.
public protocol CustomShadowImage: ShadowImageCustomizable {
    /// The `ImageStyle` that represents the shadow image.
    var shadowImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its thumb image will be customized.
public protocol CustomThumbImage: ThumbImageCustomizable {
    /// The `ImageStyle` that represents the thumb image.
    var thumbImageStyle: ImageStyle { get }
}

/// A protocol that describes a view that its track image will be customized.
public protocol CustomTrackImage: TrackImageCustomizable {
    /// The `ImageStyle` that represents the track image.
    var trackImageStyle: ImageStyle { get }
}
