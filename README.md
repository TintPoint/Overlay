# Overlay

[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Early Development](https://img.shields.io/badge/status-early%20development-red.svg?style=flat)

Write your swift UI code in the CSS way.

## Todo List

- [x] Support customizing all `*Color` properties.
- [x] Support customizing all `*Font` properties.
- [ ] Support customizing all `*image` properties.
- [ ] Support loading layout from `nib` files.
- [ ] Support `prepareForInterfaceBuilder()`.
- [ ] Remove the need to call `refresh()` manually (use KVO to observe state changes).

## Installation

### Carthage

Source is available through [Carthage](https://github.com/Carthage/Carthage). To install it, add the following line to your Cartfile:

```ogdl
github "TintPoint/Overlay" "master"
```

## Getting Started

The example shows how to customize the color of a view. Font and other attributes can also be customized similarity.

Define a custom view class that conforms to corresponding protocols with `Custom` prefix.

```swift
class CustomView: UIView, CustomBackgroundColor {

    var backgroundColorStyle: ColorStyle = UIColor.white()

}
```

The compiler will emit an error if `CustomView`'s superclass (in this case, `UIView`) doesn't have a `backgroundColor` property or `backgroundColorStyle` is not implemented by `CustomView`. `UIColor` is already conformed to `ColorStyle` protocol so it can be used directly. 

Then, open the storyboard file and change `Identity Inceptor -> Custom Class` to `CustomView`. Initialization from code is also supported, but make sure to call `refresh()` after initialization. 

## Advanced Usage

### Custom Style

In order to fully elaborate the power of Swift's type checker, it is recommended to define a custom enum that conforms to `ColorStyle` protocols. 

```swift
enum CustomColor: ColorStyle {

    case white, black

    func normal() -> UIColor {
        switch self {
        case .white: return UIColor.white()
        case .black: return UIColor.black()
        }
    }

}
```

The above example can therefore be rewritten as the following code.

```swift
class CustomView: UIView, CustomBackgroundColor {

    var backgroundColorStyle: ColorStyle = CustomColor.white

}
```

### Style Group

For views that support state transition (e.g. `UIButton`), it is very common that their design is different for different states. `*StyleGroup` can be used here.

```swift
class CustomButton: UIButton, CustomBackgroundColor {

    var backgroundColorStyle: ColorStyle = ColorGroup(normal: CustomColor.white, disabled: CustomColor.black)

}
```

Unsupported states will be ignored. Currently, it is required to call `refresh()` after the state is changed.

```swift
button.isEnabled = true
button.refresh()
```

## Reference

### Supporting States

```
- ViewFocusable: All Views
- ViewDisable: UIControl, UIButton, UIDatePicker, UIPageControl, UIRefreshControl, UISegmentedControl, UISlider, UIStepper, UISwitch, UITextField, UILabel
- ViewSelectable: UIControl, UIButton, UIDatePicker, UIPageControl, UIRefreshControl, UISegmentedControl, UISlider, UIStepper, UISwitch, UITextField, UITableViewCell
- ViewHighlightable: UIControl, UIButton, UIDatePicker, UIPageControl, UIRefreshControl, UISegmentedControl, UISlider, UIStepper, UISwitch, UITextField, UITableViewCell, UILabel, UIImageView
```
