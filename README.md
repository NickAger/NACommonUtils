# NACommonUtils

[![Version](https://img.shields.io/cocoapods/v/NACommonUtils.svg?style=flat)](http://cocoapods.org/pods/NACommonUtils)
[![License](https://img.shields.io/cocoapods/l/NACommonUtils.svg?style=flat)](http://cocoapods.org/pods/NACommonUtils)
[![Platform](https://img.shields.io/cocoapods/p/NACommonUtils.svg?style=flat)](http://cocoapods.org/pods/NACommonUtils)

Swift utilities and extensions used across a number of iOS apps

| Utility | Comment|
|---------|--------|
|ActivityOverlay|Light-weight version of [MBProgessHUD](https://github.com/jdg/MBProgressHUD) - shows a translucent HUD centred in a specified view containing an activity indicator|
|AnyError|Provides type erasing unified error type|
|Array+Functional|`func headTail() -> (head: Element, tail: [Element])?` |
|NSMutableAttributedString+Creation|`NSMutableAttributedString` creation helpers|
|OnePixelConstraint|Designed as a auto-layout width/height constraint that will always be 1px regardless of screen scale|
|String+LineUtils|Strings line helpers|
|UIButton+ActionBlock|Button onPressed: block extension|
|UIResponder+FindUIViewController|Walk the responder chain until we find a `UIViewController`; useful when a `UIView` needs to access `UIViewController` API|
|UIView+Autolayout|Autolayout helpers; `useAutolayout()`, `centerInView(..)`, `constrainToWidth(..)`, `constrainToHeight(..) `|

## Installation

The utilities are available as a [Cocoapod](https://cocoapods.org). To incorporate them to your project add the following to your `Podfile` eg:

```ruby
target '<YourProject>' do
    pod 'NACommonUtils'
    .
    .
end
```

---

See [nickager.com/blog/2016/03/04/NACommonUtils](http://nickager.com/blog/2016/03/04/NACommonUtils) for further details.
