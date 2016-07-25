# Overlay

**Still in Early Development**

Write your swift UI code in the CSS way.

## Todo List

- [x] Support customizing all `*Color` properties.
- [x] Support customizing all `*Font` properties.
- [ ] Support customizing all `*image` properties.
- [ ] Support init from code.
- [ ] Support loading from `nib` files.
- [ ] Support `prepareForInterfaceBuilder()`.
- [ ] Remove the need to call `refresh()` manually (using `KVO` to observe state changes).

## Getting Started

Define a custom `UIView` (or other classes) subclass that conforms to corresponding `Custom*` protocols. Then, only the storyboard file and change `Identity Inceptor -> Custom Class` to your custom class.

```swift
class CustomView: UIView, CustomBackgroundColor {

    var backgroundColorStyle: ColorStyle = UIColor.white()

}
```

The compiler will emit an error if `UIView` can’t customize its background color or `backgroundColorStyle` is not implemented by the class. In this example, `UIColor` is already conformed to `ColorStyle` so it can be used directly. Font and other properties can be customized using similar ways.

## Advanced Usage

### Custom Style

In order to fully elaborate the power of this framework, it is recommended to define a custom `enum` that conforms to `*Style`.

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
