//
//  CustomImage.swift
//  Overlay
//
//  Created by Justin Jia on 8/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomBackgroundImage: BackgroundImageCustomizable {
    
    var backgroundImageStyle: ImageStyle { get }
    
}

public protocol CustomDecrementImage: DecrementImageCustomizable {
    
    var decrementImageStyle: ImageStyle { get }
    
}

public protocol CustomHighlightedImage: HighlightedImageCustomizable {
    
    var highlightedImageStyle: ImageStyle { get }
    
}

public protocol CustomImage: ImageCustomizable {
    
    var imageStyle: ImageStyle { get }
    
}

public protocol CustomIncrementImage: IncrementImageCustomizable {
    
    var incrementImageStyle: ImageStyle { get }
    
}

public protocol CustomLandscapeImagePhone: LandscapeImagePhoneCustomizable {
    
    var landscapeImagePhoneStyle: ImageStyle { get }
    
}

public protocol CustomMaximumTrackImage: MaximumTrackImageCustomizable {
    
    var maximumTrackImageStyle: ImageStyle { get }
    
}

public protocol CustomMaximumValueImage: MaximumValueImageCustomizable {
    
    var maximumValueImageStyle: ImageStyle { get }
    
}

public protocol CustomMinimumTrackImage: MinimumTrackImageCustomizable {
    
    var minimumTrackImageStyle: ImageStyle { get }
    
}

public protocol CustomMinimumValueImage: MinimumValueImageCustomizable {
    
    var minimumValueImageStyle: ImageStyle { get }
    
}

public protocol CustomOffImage: OffImageCustomizable {
    
    var offImageStyle: ImageStyle { get }
    
}

public protocol CustomOnImage: OnImageCustomizable {
    
    var onImageStyle: ImageStyle { get }
    
}

public protocol CustomProgressImage: ProgressImageCustomizable {
    
    var progressImageStyle: ImageStyle { get }
    
}

public protocol CustomScopeBarButtonBackgroundImage: ScopeBarButtonBackgroundImageCustomizable {
    
    var scopeBarButtonBackgroundImageStyle: ImageStyle { get }
    
}

public protocol CustomSearchFieldBackgroundImage: SearchFieldBackgroundImageCustomizable {
    
    var searchFieldBackgroundImageStyle: ImageStyle { get }
    
}

public protocol CustomSelectedImage: SelectedImageCustomizable {
    
    var selectedImageStyle: ImageStyle { get }
    
}

public protocol CustomShadowImage: ShadowImageCustomizable {
    
    var shadowImageStyle: ImageStyle { get }
    
}

public protocol CustomThumbImage: ThumbImageCustomizable {
    
    var thumbImageStyle: ImageStyle { get }
    
}

public protocol CustomTrackImage: TrackImageCustomizable {
    
    var trackImageStyle: ImageStyle { get }
    
}
