# Overlay

[![Build Status](https://img.shields.io/travis/TintPoint/Overlay.svg)](https://travis-ci.org/TintPoint/Overlay)
[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Overlay.svg)](https://cocoapods.org)

Overlay is a very flexible UI framework designed for Swift.

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
github "TintPoint/Overlay" ~> 0.7
```

### CocoaPods

[CocoaPods](https://cocoapods.org) is a centralized dependency manager. To install Overlay, add the following line to your `Podfile`:

```ruby
pod 'Overlay', '~> 0.7'
```

## Example

Overlay allows one to write declarative yet type safe UI code, something looks like this:

```swift
@IBDesignable
class StandardTextField: UITextField, CustomTintColor, CustomTextColor, CustomPlaceholderTextColor, CustomFont, CustomTextAlignment {

    let tintColorStyle: ColorStyle = Color.notify
    let textColorStyle: ColorStyle = Color.primary
    let placeholderTextColorStyle: ColorStyle = Color.secondary
    let fontStyle: FontStyle = Font.default
    let textAlignmentStyle: TextAlignmentStyle = TextAlignment.body

}
```

## Getting Started

Define a custom class that conforms to protocols with `Custom` prefix (list of available protocols can be found [here](#available-protocols)). For example, to customize the background color attribute of a view, write the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {
    let backgroundColorStyle: ColorStyle = UIColor.white
}
```

The compiler will emit an error if `CustomView`'s superclass (in this case, `UIView`) is not `BackgroundColorCustomizable`, or `backgroundColorStyle` is not implemented by `CustomView`. `UIColor` is already conformed to `ColorStyle` protocol so it can be used here. Font and other attributes can also be customized similarly.

`CustomView` can be used like other views, but it is recommended to use it with Interface Builder.

> Open the storyboard file (or nib file), select the view you want to change, navigate to Identity Inceptor, and set `Custom Class` to `CustomView`.

Creating views programmatically is also supported.

```swift
let customView = CustomView()
customView.refresh() // make sure to call refresh() after initialization
```

## Advanced Usage

### Custom Style

In order to fully take advantage of the power of Swift's type checker, it is recommended to define custom enums (or structs with private initializers) that conform to protocols with `Style` postfix (list of available styles can be found [here](#available-styles)).

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

Previous example can be rewritten as the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {
    let backgroundColorStyle: ColorStyle = CustomColor.normal
}
```

### Style Group

For views which have more than one states (e.g. `UIButton`), their appearance usually needs to change base on state changes. All custom styles have corresponding style groups that support this feature (list of available style groups can be found [here](#available-style-groups)).

```swift
class CustomButton: UIButton, CustomBackgroundColor {
    let backgroundColorStyle: ColorStyle = ColorGroup(normal: CustomColor.normal, disabled: CustomColor.disabled)
}
```

It is also possible to implement app-specific style groups by conforming to protocols with `StyleGroup` postfix.

```swift
enum CustomColorGroup: ColorStyleGroup {
    case standard
    func normal() -> UIColor {
        return UIColor.white
    }
    func disabled() -> UIColor? {
        return UIColor.black
    }
}

class CustomButton: UIButton, CustomBackgroundColor {
    let backgroundColorStyle: ColorStyle = CustomColorGroup.standard
}
```

States defined in a style group but aren't supported by the view using it will be ignored. Currently, it is required to call `refresh()` after changing the state.

```swift
button.isEnabled = true
button.refresh()
```

### Other Attributes

Overlay supports customizing views' colors, fonts, images, texts and text alignments.

However, it is still possible to customize other attributes by adopting protocols with `Design` postfix.

```swift
class BorderView: UIView, CustomViewDesign {
    let design: (UIView) -> Void = { view in
        view.layer.borderWidth = 1
    }
}
```

### Custom Layout

Most views contain subviews. Overlay is designed with this in mind, but it's not its goal to handle subview layouts. Overlay should only handle views' style attributes (like colors and fonts), and the main application should handle views' layouts (like origin and size). `CustomLayout` protocol allows Overlay to work with Interface Builder together seamlessly.

Define a custom class that conforms to `CustomLayout` protocol. Then create a nib file and set its `File's Owner` to the newly defined class.

```swift
class ComplexView: UIView, CustomLayout {
    let contentNib: UINib = UINib(nibName: "ComplexView", bundle: Bundle(for: ComplexView.self))
}
```

The first root view inside `ComplexView.xib` will be loaded and added as a content view of `ComplexView`. Note: Added view's background color usually should be clear color.

Create `IBOutlet` and connect them like usual, if needed.

```swift
class ComplexView: UIView, CustomLayout {
    let contentNib: UINib = UINib(nibName: "ComplexView", bundle: Bundle(for: ComplexView.self))
    @IBOutlet weak var button: CustomButton?
}
```

## Reference

### Available Protocols

#### Custom Cell

> - CustomCell
> - CustomHeaderFooterView
> - CustomReusableView

#### Custom Design

> - CustomActivityIndicatorViewDesign
> - CustomBarButtonItemDesign
> - CustomBarItemDesign
> - CustomButtonDesign
> - CustomCollectionViewDesign
> - CustomControlDesign
> - CustomDatePickerDesign
> - CustomDesign
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
> - CustomPlaceholderTextColor
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
> - ColorStyleGroup
> - FontStyle
> - FontStyleGroup
> - ImageStyle
> - ImageStyleGroup
> - TextAlignmentStyle
> - TextAlignmentStyleGroup
> - TextStyle
> - TextStyleGroup

### Available Style Groups

> - ColorGroup
> - FontGroup
> - ImageGroup
> - TextAlignmentGroup
> - TextGroup

### Available States

#### ViewHideable

> - UIView and its subclasses

#### ViewFocusable

> - UIView and its subclasses

#### ViewDisable

> - UIBarButtonItem
> - UIBarItem
> - UIButton
> - UIControl
> - UIDatePicker
> - UILabel
> - UIPageControl
> - UIRefreshControl
> - UISegmentedControl
> - UISlider
> - UIStepper
> - UISwitch
> - UITabBarItem
> - UITextField

#### ViewSelectable

> - UIButton
> - UIControl
> - UIDatePicker
> - UIPageControl
> - UIRefreshControl
> - UISegmentedControl
> - UISlider
> - UIStepper
> - UISwitch
> - UITableViewCell
> - UITextField

#### ViewHighlightable

> - UIButton
> - UIControl
> - UIDatePicker
> - UIImageView
> - UILabel
> - UIPageControl
> - UIRefreshControl
> - UISegmentedControl
> - UISlider
> - UIStepper
> - UISwitch
> - UITableViewCell
> - UITextField
