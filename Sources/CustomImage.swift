//
//  CustomImage.swift
//  Overlay
//
//  Created by Justin Jia on 8/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomImage: ViewCustomizable {
    
    var image: UIImage? { get set }
    var imageStyle: ImageStyle { get }
    
}

public protocol CustomHighlightedImage: ViewCustomizable {
    
    var highlightedImage: UIImage? { get set }
    var highlightedImageStyle: ImageStyle { get }
    
}

public protocol CustomShadowImage: ViewCustomizable {
    
    var shadowIamge: UIImage? { get set }
    var shadowImageStyle: ImageStyle { get }
    
}

public protocol CustomSwitchOnImage: ViewCustomizable {
    
    var onImage: UIImage? { get set }
    var onImageStyle: ImageStyle { get }
    
}

public protocol CustomSwitchOffImage: ViewCustomizable {
    
    var offImage: UIImage? { get set }
    var offImageStyle: ImageStyle { get }
    
}

public protocol CustomSliderMaximumValueImage: ViewCustomizable {
    
    var maximumValueImage: UIImage? { get set }
    var maximumValueImageStyle: ImageStyle { get }
    
}

public protocol CustomSliderMinimumValueImage: ViewCustomizable {
    
    var minimumValueImage: UIImage? { get set }
    var minimumValueImageStyle: ImageStyle { get }
    
}

public protocol CustomProgressImage: ViewCustomizable {
    
    var progressImage: UIImage? { get set }
    var progressImageStyle: ImageStyle { get }
    
}

public protocol CustomProgressTrackImage: ViewCustomizable {
    
    var trackImage: UIImage? { get set }
    var trackImageStyle: ImageStyle { get }
    
}

public protocol CustomBarBackgroundImage: ViewCustomizable {
    
    var backgroundImage: UIImage? { get set }
    var backgroundImageStyle: ImageStyle { get }
    
}

public protocol CustomBarItemLandscapeImagePhone: ViewCustomizable {
    
    var landscapeImagePhone: UIImage? { get set }
    var landscapeImagePhoneStyle: ImageStyle { get }
    
}

public protocol CustomBarItemSelectedImage: ViewCustomizable {
    
    var selectedImage: UIImage? { get set }
    var selectedImageStyle: ImageStyle { get }
    
}
