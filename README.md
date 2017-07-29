# Overlay

[![Build Status](https://img.shields.io/travis/TintPoint/Overlay.svg)](https://travis-ci.org/TintPoint/Overlay)
[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Overlay.svg)](https://cocoapods.org)

Overlay is a very flexible UI framework designed for Swift on top of UIKit.

**Note**: Overlay is still under development and many things are subject to change.

## Features

- [x] Protocol oriented design
- [x] Interface Builder support
- [x] Comprehensive unit test coverage
- [x] [Complete documentation](http://cocoadocs.org/docsets/Overlay)

## Requirements

iOS 9+ / Xcode 9+ / Swift 4+

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager. To install Overlay, add the following line to your `Cartfile`:

```ogdl
github "TintPoint/Overlay" "swift-4.0"
```

### CocoaPods

[CocoaPods](https://cocoapods.org) is a centralized dependency manager. To install Overlay, add the following line to your `Podfile`:

```ruby
pod 'Overlay', :git => 'https://github.com/TintPoint/Overlay.git', :branch => 'swift-4.0'
```

## Getting Started

Define a custom class that conforms to protocols with `Custom` prefix (list of available protocols can be found [here](#available-protocols)). For example, to customize the background color attribute of a view, write the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = UIColor.white
}
```

The compiler will emit an error if `CustomView`'s superclass (in this case, `UIView`) is not `BackgroundColorCustomizable`, or `backgroundColorStyle` is not implemented by `CustomView`. `UIColor` is already conformed to `ColorStyle` protocol so it can be used directly. Font and other attributes can also be customized similarly.

`CustomView` can be used like other views. It is recommended to use it with Interface Builder. Open the storyboard file (or nib file), select the view you want to change, navigate to Identity Inceptor, and fill Custom Class with `CustomView`.

Initialization from code is also supported, but make sure to call `refresh()` after initialization.

```swift
let customView = CustomView(frame: CGRect())
customView.refresh()
```

## Advanced Usage

### Custom Style

In order to fully elaborate the power of Swift's type checker, it is recommended to define a custom enum that conforms to protocols with `Style` postfix (list of available styles can be found [here](#available-styles)).

```swift
enum CustomColor: ColorStyle {
    case normal, disabled

    func normal() -> UIColor {
        switch self {
        case .normal: return UIColor.white
        case .disabled: return UIColor.black
        }
    }
}
```

The above example can be rewritten as the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = CustomColor.normal
}
```

### Style Group

For views that have more than one state (e.g. `UIButton`), their design usually needs to change if their state changes (list of available states can be found [here](#available-styles)). Style group can be used here. All custom style has a corresponding style group (list of available style groups can be found [here](#available-style-groups)).

```swift
class CustomButton: UIButton, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = ColorGroup(normal: CustomColor.normal, disabled: CustomColor.disabled)
}
```

It is also possible to implement app-specific style group by conforming to protocols with `StyleGroup` postfix.

```swift
enum CustomColorGroup: ColorStyleGroup {
    case standard

    func normal() -> UIColor {
        switch self {
        case .standard: return UIColor.white
        }
    }

    func disabled() -> UIColor? {
        switch self {
        case .standard: return UIColor.black
        }
    }
}

class CustomButton: UIButton, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = CustomColorGroup.standard
}
```

Unsupported states will be ignored. Currently, it is required to call `refresh()` after changing the state.

```swift
button.isEnabled = true
button.refresh()
```

### Custom Layout

Some views contain subviews. Overlay is designed with this in mind, but it's not the framework's job to handle the layout. Overlay should only handle attributes (like color and font) and Interface Builder should handle layout (like origin and size). `CustomLayout` protocol allows Overlay to work with Interface Builder together seamlessly.

Define a custom class that conforms to `CustomLayout` protocol. Create a nib file and set File's Owner to the newly defined class.

```swift
class ComplexView: UIView, CustomLayout {
    var contentNib: UINib = UINib(nibName: "ComplexView", bundle: Bundle(for: ComplexView.self))
}
```

The first root view inside `ComplexView.xib` will be loaded and added as a content view on top of `ComplexView`. Note: Content view's background color usually should be clear color.

Create `IBOutlet` and connect them like usual if needed.

```swift
class ComplexView: UIView, CustomLayout {
    var contentNib: UINib = UINib(nibName: "ComplexView", bundle: Bundle(for: ComplexView.self))
    @IBOutlet weak var button: CustomButton?
}
```

### Unsupported Attributes

Please fill an issue for feature requests. Pull requests are always welcomed!

However, it is still possible to customize not-yet-supported attributes by adopting `CustomDesign` protocol.

```swift
class BorderView: UIView, CustomDesign {
    var design: (DesignCustomizable) -> () = { view in
        (view as! UIView).layer.borderWidth = 1
    }
}
```

## Reference

### Available Protocols

#### Custom Cell

> - CustomCell
> - CustomHeaderFooterView
> - CustomReusableView

#### Custom Design

> - CustomDesign
> - CustomActivityIndicatorViewDesign
> - CustomBarButtonItemDesign
> - CustomBarItemDesign
> - CustomButtonDesign
> - CustomCollectionViewDesign
> - CustomControlDesign
> - CustomDatePickerDesign
> - CustomImageViewDesign
> - CustomLabelDesign
> - CustomNavigationBarDesign
> - CustomPageControlDesign
> - CustomPickerViewDesign
> - CustomProgressViewDesign
> - CustomScrollViewDesign
> - CustomSearchBarDesign
> - CustomSegmentedControlDesign
> - CustomSliderDesign
> - CustomStackViewDesign
> - CustomStepperDesign
> - CustomSwitchDesign
> - CustomTabBarDesign
> - CustomTabBarItemDesign
> - CustomTableViewDesign
> - CustomTextFieldDesign
> - CustomTextViewDesign
> - CustomToolbarDesign
> - CustomViewDesign
> - CustomWebViewDesign

#### Custom Layout

> - CustomLayout

#### Custom Color

> - CustomBackgroundColor
> - CustomBadgeColor
> - CustomBarTintColor
> - CustomBorderColor
> - CustomColor
> - CustomMaximumTrackTintColor
> - CustomMinimumTrackTintColor
> - CustomOnTintColor
> - CustomProgressTintColor
> - CustomSectionIndexBackgroundColor
> - CustomSectionIndexColor
> - CustomSectionIndexTrackingBackgroundColor
> - CustomSeparatorColor
> - CustomShadowColor
> - CustomTextColor
> - CustomThumbTintColor
> - CustomTintColor
> - CustomTitleColor
> - CustomTitleShadowColor
> - CustomTrackTintColor
> - CustomUnselectedItemTintColor

#### Custom Font

> - CustomFont
> - CustomTitleFont

#### Custom Image

> - CustomBackgroundImage
> - CustomDecrementImage
> - CustomHighlightedImage
> - CustomImage
> - CustomIncrementImage
> - CustomLandscapeImagePhone
> - CustomMaximumTrackImage
> - CustomMaximumValueImage
> - CustomMinimumTrackImage
> - CustomMinimumValueImage
> - CustomOffImage
> - CustomOnImage
> - CustomProgressImage
> - CustomScopeBarButtonBackgroundImage
> - CustomSearchFieldBackgroundImage
> - CustomSelectedImage
> - CustomShadowImage
> - CustomThumbImage
> - CustomTrackImage

#### Custom Text

> - CustomPlaceholder
> - CustomPrompt
> - CustomScopeButtonTitles
> - CustomSegmentTitles
> - CustomText
> - CustomTitle

#### Custom Text Alignment

> - CustomTextAlignment
> - CustomTitleTextAlignment

### Available Styles

> - ColorStyle
> - FontStyle
> - ImageStyle
> - TextStyle
> - TextAlignmentStyle
> - ColorStyleGroup
> - FontStyleGroup
> - ImageStyleGroup
> - TextStyleGroup
> - TextAlignmentStyleGroup

### Available Style Groups

> - ColorGroup
> - FontGroup
> - ImageGroup
> - TextGroup
> - TextAlignmentGroup

### Available States

#### ViewFocusable

> - UIView and its subclasses

#### ViewDisable

> - UIBarItem
> - UIBarButtonItem
> - UITabBarItem
> - UIControl
> - UIButton
> - UIDatePicker
> - UIPageControl
> - UIRefreshControl
> - UISegmentedControl
> - UISlider
> - UIStepper
> - UISwitch
> - UITextField
> - UILabel

#### ViewSelectable

> - UIControl
> - UIButton
> - UIDatePicker
> - UIPageControl
> - UIRefreshControl
> - UISegmentedControl
> - UISlider
> - UIStepper
> - UISwitch
> - UITextField
> - UITableViewCell

#### ViewHighlightable

> - UIControl
> - UIButton
> - UIDatePicker
> - UIPageControl
> - UIRefreshControl
> - UISegmentedControl
> - UISlider
> - UIStepper
> - UISwitch
> - UITextField
> - UITableViewCell
> - UILabel
> - UIImageView
