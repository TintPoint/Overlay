//
//  ImageCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its background image can be customized.
public protocol BackgroundImageCustomizable: ImageStyleExpressible {

    /// Customizes the background image.
    /// - Parameter style: An `ImageStyle` that describes the background image.
    func customizeBackgroundImage(using style: ImageStyle)

}

/// A protocol that describes a view that its decrement image can be customized.
public protocol DecrementImageCustomizable: ImageStyleExpressible {

    /// Customizes the decrement image.
    /// - Parameter style: An `ImageStyle` that describes the decrement image.
    func customizeDecrementImage(using style: ImageStyle)

}

/// A protocol that describes a view that its highlighted image can be customized.
public protocol HighlightedImageCustomizable: ImageStyleExpressible {

    /// Customizes the highlighted image.
    /// - Parameter style: An `ImageStyle` that describes the highlighted image.
    func customizeHighlightedImage(using style: ImageStyle)

}

/// A protocol that describes a view that its image can be customized.
public protocol ImageCustomizable: ImageStyleExpressible {

    /// Customizes the image.
    /// - Parameter style: An `ImageStyle` that describes the image.
    func customizeImage(using style: ImageStyle)

}

/// A protocol that describes a view that its increment image can be customized.
public protocol IncrementImageCustomizable: ImageStyleExpressible {

    /// Customizes the increment image.
    /// - Parameter style: An `ImageStyle` that describes the increment image.
    func customizeIncrementImage(using style: ImageStyle)

}

/// A protocol that describes a view that its landscape image for iPhone can be customized.
public protocol LandscapeImagePhoneCustomizable: ImageStyleExpressible {

    /// Customizes the landscape image for iPhone.
    /// - Parameter style: An `ImageStyle` that describes the landscape image for iPhone.
    func customizeLandscapeImagePhone(using style: ImageStyle)

}

/// A protocol that describes a view that its maximum track image can be customized.
public protocol MaximumTrackImageCustomizable: ImageStyleExpressible {

    /// Customizes the maximum track image.
    /// - Parameter style: An `ImageStyle` that describes the maximum track image.
    func customizeMaximumTrackImage(using style: ImageStyle)

}

/// A protocol that describes a view that its maximum value image can be customized.
public protocol MaximumValueImageCustomizable: ImageStyleExpressible {

    /// Customizes the maximum value image.
    /// - Parameter style: An `ImageStyle` that describes the maximum value image.
    func customizeMaximumValueImage(using style: ImageStyle)

}

/// A protocol that describes a view that its minimum track image can be customized.
public protocol MinimumTrackImageCustomizable: ImageStyleExpressible {

    /// Customizes the minimum track image.
    /// - Parameter style: An `ImageStyle` that describes the minimum track image.
    func customizeMinimumTrackImage(using style: ImageStyle)

}

/// A protocol that describes a view that its minimum value image can be customized.
public protocol MinimumValueImageCustomizable: ImageStyleExpressible {

    /// Customizes the minimum value image.
    /// - Parameter style: An `ImageStyle` that describes the minimum value image.
    func customizeMinimumValueImage(using style: ImageStyle)

}

/// A protocol that describes a view that its off image can be customized.
public protocol OffImageCustomizable: ImageStyleExpressible {

    /// Customizes the off image.
    /// - Parameter style: An `ImageStyle` that describes the off image.
    func customizeOffImage(using style: ImageStyle)

}

/// A protocol that describes a view that its on image can be customized.
public protocol OnImageCustomizable: ImageStyleExpressible {

    /// Customizes the on image.
    /// - Parameter style: An `ImageStyle` that describes the on image.
    func customizeOnImage(using style: ImageStyle)

}

/// A protocol that describes a view that its progress image can be customized.
public protocol ProgressImageCustomizable: ImageStyleExpressible {

    /// Customizes the progress image.
    /// - Parameter style: An `ImageStyle` that describes the progress image.
    func customizeProgressImage(using style: ImageStyle)

}

/// A protocol that describes a view that its scope bar button background image can be customized.
public protocol ScopeBarButtonBackgroundImageCustomizable: ImageStyleExpressible {

    /// Customizes the scope bar button background image.
    /// - Parameter style: An `ImageStyle` that describes the scope bar button background image.
    func customizeScopeBarButtonBackgroundImage(using style: ImageStyle)

}

/// A protocol that describes a view that its search field background image can be customized.
public protocol SearchFieldBackgroundImageCustomizable: ImageStyleExpressible {

    /// Customizes the search field background image.
    /// - Parameter style: An `ImageStyle` that describes the search field background image.
    func customizeSearchFieldBackgroundImage(using style: ImageStyle)

}

/// A protocol that describes a view that its selected image can be customized.
public protocol SelectedImageCustomizable: ImageStyleExpressible {

    /// Customizes the selected image.
    /// - Parameter style: An `ImageStyle` that describes the selected image.
    func customizeSelectedImage(using style: ImageStyle)

}

/// A protocol that describes a view that its shadow image can be customized.
public protocol ShadowImageCustomizable: ImageStyleExpressible {

    /// Customizes the shadow image.
    /// - Parameter style: An `ImageStyle` that describes the shadow image.
    func customizeShadowImage(using style: ImageStyle)

}

/// A protocol that describes a view that its thumb image can be customized.
public protocol ThumbImageCustomizable: ImageStyleExpressible {

    /// Customizes the thumb image.
    /// - Parameter style: An `ImageStyle` that describes the thumb image.
    func customizeThumbImage(using style: ImageStyle)

}

/// A protocol that describes a view that its track image can be customized.
public protocol TrackImageCustomizable: ImageStyleExpressible {

    /// Customizes the track image.
    /// - Parameter style: An `ImageStyle` that describes the track image.
    func customizeTrackImage(using style: ImageStyle)

}

extension UIBarButtonItem: ImageCustomizable, LandscapeImagePhoneCustomizable {

    public func customizeImage(using style: ImageStyle) {
        image = selectedImage(from: style)
    }

    public func customizeLandscapeImagePhone(using style: ImageStyle) {
        landscapeImagePhone = selectedImage(from: style)
    }

}

extension UITabBarItem: ImageCustomizable, SelectedImageCustomizable {

    public func customizeImage(using style: ImageStyle) {
        image = selectedImage(from: style)
    }

    public func customizeSelectedImage(using style: ImageStyle) {
        selectedImage = selectedImage(from: style)
    }

}

extension UIButton: ImageCustomizable, BackgroundImageCustomizable {

    public func customizeImage(using style: ImageStyle) {
        customizeImage(using: style, through: setImage)
    }

    public func customizeBackgroundImage(using style: ImageStyle) {
        customizeImage(using: style, through: setBackgroundImage)
    }

}

extension UISlider: MinimumValueImageCustomizable, MaximumValueImageCustomizable, MinimumTrackImageCustomizable, MaximumTrackImageCustomizable, ThumbImageCustomizable {

    public func customizeMinimumValueImage(using style: ImageStyle) {
        minimumValueImage = selectedImage(from: style)
    }

    public func customizeMaximumValueImage(using style: ImageStyle) {
        maximumValueImage = selectedImage(from: style)
    }

    public func customizeMinimumTrackImage(using style: ImageStyle) {
        customizeImage(using: style, through: setMinimumTrackImage)
    }

    public func customizeMaximumTrackImage(using style: ImageStyle) {
        customizeImage(using: style, through: setMaximumTrackImage)
    }

    public func customizeThumbImage(using style: ImageStyle) {
        customizeImage(using: style, through: setThumbImage)
    }

}

extension UIStepper: BackgroundImageCustomizable, DecrementImageCustomizable, IncrementImageCustomizable {

    public func customizeBackgroundImage(using style: ImageStyle) {
        customizeImage(using: style, through: setBackgroundImage)
    }

    public func customizeDecrementImage(using style: ImageStyle) {
        customizeImage(using: style, through: setDecrementImage)
    }

    public func customizeIncrementImage(using style: ImageStyle) {
        customizeImage(using: style, through: setIncrementImage)
    }

}

extension UISwitch: OffImageCustomizable, OnImageCustomizable {

    public func customizeOffImage(using style: ImageStyle) {
        offImage = selectedImage(from: style)
    }

    public func customizeOnImage(using style: ImageStyle) {
        onImage = selectedImage(from: style)
    }

}

extension UIImageView: ImageCustomizable, HighlightedImageCustomizable {

    public func customizeImage(using style: ImageStyle) {
        image = selectedImage(from: style)
    }

    public func customizeHighlightedImage(using style: ImageStyle) {
        highlightedImage = selectedImage(from: style)
    }

}

extension UINavigationBar: ShadowImageCustomizable {

    public func customizeShadowImage(using style: ImageStyle) {
        shadowImage = selectedImage(from: style)
    }

}

extension UIProgressView: ProgressImageCustomizable, TrackImageCustomizable {

    public func customizeProgressImage(using style: ImageStyle) {
        progressImage = selectedImage(from: style)
    }

    public func customizeTrackImage(using style: ImageStyle) {
        trackImage = selectedImage(from: style)
    }

}

extension UISearchBar: BackgroundImageCustomizable, SearchFieldBackgroundImageCustomizable, ScopeBarButtonBackgroundImageCustomizable {

    public func customizeBackgroundImage(using style: ImageStyle) {
        backgroundImage = selectedImage(from: style)
    }

    public func customizeSearchFieldBackgroundImage(using style: ImageStyle) {
        customizeImage(using: style, through: setSearchFieldBackgroundImage)
    }

    public func customizeScopeBarButtonBackgroundImage(using style: ImageStyle) {
        customizeImage(using: style, through: setScopeBarButtonBackgroundImage)
    }

}

extension UITabBar: BackgroundImageCustomizable, ShadowImageCustomizable {

    public func customizeBackgroundImage(using style: ImageStyle) {
        backgroundImage = selectedImage(from: style)
    }

    public func customizeShadowImage(using style: ImageStyle) {
        shadowImage = selectedImage(from: style)
    }

}
