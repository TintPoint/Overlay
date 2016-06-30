# Overlay

## Todo List

- [ ] Update view base on state (e.g. `isEnabled`) dynamically.
- [ ] Implement more `Custom` protocols.
- [ ] Implement `CustomNib` to support loading layout from a nib file.
- [ ] Support more properties (e.g. `cornerRadius`).
- [ ] Support `init(frame:)`.
- [ ] Add `FontGroup`.

## Example Usage

```swift
class CustomView: UIView, CustomBackgroundColor {

    var backgroundColorStyle: ColorStyle = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))

}
```

## Advanced Usage

### Custom Color

```swift
enum CustomColor: ColorStyle {

    case white, black

    func color() -> UIColor {
        switch self {
        case .white: return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .black: return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }

}
```

### Color Group

```swift
class CustomView: UIView, CustomBackgroundColor {

    var backgroundColorStyle: ColorStyle = ColorGroup(normal: CustomColor.white, disabled: CustomColor.black)

}
```

### Custom Font

```swift
enum customFont: FontStyle {

    case standard

    func font() -> UIFont {
        switch self {
        case .standard: return UIFont(name: "Avenir", size: 16.0)!
        }
    }

}
```
