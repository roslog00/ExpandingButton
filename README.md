# Expanding button

<p float="left">
  <img src="https://s10.gifyu.com/images/SYERY.gif" width="45%">
</p>
 

**Gum button**. Contains `Small`, `Medium`, `Large` sizes.
I tried to recreate the gum effect of the button.

  ```swift
enum SizeButton {
    case s, m, l
}
```

![Expanding Button](https://i.postimg.cc/B60ZQLsm/2024-06-04-19-47-55.png)

# Navigate
- [Swift Package Manager](#swift-package-manager)


### Swift Package Manager

In Xcode go to Project -> Your Project Name -> `Package Dependencies` -> Tap _Plus_. Insert url:

```
https://github.com/roslog00/ExpandingButton
```

or adding it to the `dependencies` of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/roslog00/ExpandingButton", .upToNextMajor(from: "1.0"))
]
```

## SwiftUI

You can use basic way via `ExpandingButton`:

```swift
let button = ExpandingButton(text: "Agree")
```

## Customisation

If you need customisation font, colors or any other, make view:

```swift
let button = ExpandingButton(text: "Agree", 
                             font: .title2,
                             size: .l,
                             textColor: .white,
                             backgroundColor: .black,
                             cornerRadius: 20,
                             kerning: 40)
```

## Contacts 

Telegram: https://t.me/chebakovdev
LinkedIn: https://www.linkedin.com/in/George-chebakov
