# Overlay

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Overlay.svg)](https://cocoapods.org)
[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Early Development](https://img.shields.io/badge/status-early%20development-red.svg?style=flat)

Overlay is a very flexible UI framework designed for Swift. It is very easy to use but still provides the ability to design complex UI elements. **Note**: Overlay is still under development and many things are subject to change.

## Features

- [x] Support customizing color related properties.
- [x] Support customizing font related properties.
- [x] Support customizing image related properties.
- [ ] Support customizing shape related properties.
- [x] Support loading layout from nib file.
- [ ] Support storyboard preview.

## Requirements

iOS 9+ / Xcode 8+ / Swift 3+

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager. To install Overlay, add the following line to your `Cartfile`:

```ogdl
github "TintPoint/Overlay" ~> 0.1
```

### CocoaPods

**Note:** Due to [this bug](https://github.com/CocoaPods/CocoaPods/issues/5663), currently Overlay is not available via CocoaPods.

[CocoaPods](https://cocoapods.org) is a centralized dependency manager. To install Overlay, add the following line to your `Podfile`:

```ruby
pod 'Overlay', '~> 0.1'
```

## Getting Started

Define a custom class that conforms to protocols with `Custom` prefix (list of available protocols can be found [here](#available-protocols)). For example, to customize the background color attribute of a view, write the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = UIColor.white
}
```

The compiler will emit an error if `CustomView`'s superclass (in this case, `UIView`) doesn't have a `backgroundColor` property or `backgroundColorStyle` is not implemented by `CustomView`. `UIColor` is already conformed to `ColorStyle` protocol so it can be used directly. Font and other attributes can also be customized similarly.

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
    case white, black

    func normal() -> UIColor {
        switch self {
        case .white: return UIColor.white
        case .black: return UIColor.black
        }
    }
}
```

The above example can be rewritten as the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = CustomColor.white
}
```

### Style Group

For views that have more than one state (e.g. `UIButton`), their design usually needs to change if their state changes (list of available states can be found [here](#available-styles)). Style group can be used here. All custom style has a corresponding style group (list of available style groups can be found [here](#available-style-groups)).

```swift
class CustomButton: UIButton, CustomBackgroundColor {
    var backgroundColorStyle: ColorStyle = ColorGroup(normal: CustomColor.white, disabled: CustomColor.black)
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
    var nib: UINib = UINib(nibName: "ComplexView", bundle: Bundle(for: ComplexView.self))
}
```

The first root view inside `ComplexView.xib` will be loaded and added as a container view on top of `ComplexView`. Note: Container view's background color should be clear color under most circumstances.

Create `IBOutlet` and connect them like usual if needed.

```swift
class ComplexView: UIView, CustomLayout {
    var nib: UINib = UINib(nibName: "ComplexView", bundle: Bundle(for: ComplexView.self))
    @IBOutlet weak var button: CustomButton?
}
```

## Reference

### Available Protocols

#### Custom Color

> - CustomTintColor
> - CustomBackgroundColor
> - CustomTextColor
> - CustomShadowColor
> - CustomActivityIndicatorColor
> - CustomButtonTitleColor
> - CustomButtonTitleShadowColor
> - CustomSliderMinimumTrackTintColor
> - CustomSliderMaximumTrackTintColor
> - CustomSliderThumbTintColor
> - CustomSwitchOnTintColor
> - CustomSwitchThumbTintColor
> - CustomBarTintColor
> - CustomBarUnselectedItemTintColor
> - CustomBarItemTintColor
> - CustomBarItemBadgeColor
> - CustomProgressTintColor
> - CustomProgressTrackTintColor
> - CustomTableViewSeparatorColor
> - CustomTableViewSectionIndexColor
> - CustomTableViewSectionIndexBackgroundColor
> - CustomTableViewSectionIndexTrackingBackgroundColor

#### Custom Font

> - CustomFont

#### Custom Image

> - CustomImage
> - CustomHighlightedImage
> - CustomShadowImage
> - CustomButtonImage
> - CustomButtonBackgroundImage
> - CustomStepperBackgroundImage
> - CustomStepperDecrementImage
> - CustomStepperIncrementImage
> - CustomSwitchOnImage
> - CustomSwitchOffImage
> - CustomSliderMinimumValueImage
> - CustomSliderMaximumValueImage
> - CustomSliderMinimumTrackImage
> - CustomSliderMaximumTrackImage
> - CustomSliderThumbImage
> - CustomProgressImage
> - CustomProgressTrackImage
> - CustomBarSearchFieldBackgroundImage
> - CustomBarScopeBarButtonBackgroundImage
> - CustomBarBackgroundImage
> - CustomBarItemLandscapeImagePhone
> - CustomBarItemSelectedImage

#### Custom Layout

> - CustomLayout

### Available Styles

> - ColorStyle
> - FontStyle
> - ImageStyle
> - ColorStyleGroup
> - FontStyleGroup
> - ImageStyleGroup

### Available Style Groups

> - ColorGroup
> - FontGroup
> - ImageGroup

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
