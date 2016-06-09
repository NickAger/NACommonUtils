# NACommonUtils


[![CI Status](http://img.shields.io/travis/NickAger/NACommonUtils.svg?style=flat)](https://travis-ci.org/NickAger/NACommonUtils)
[![codecov.io](https://codecov.io/github/NickAger/NACommonUtils/coverage.svg?branch=master)](https://codecov.io/github/NickAger/NACommonUtils?branch=master)
[![Version](https://img.shields.io/cocoapods/v/NACommonUtils.svg?style=flat)](http://cocoapods.org/pods/NACommonUtils)
[![License](https://img.shields.io/cocoapods/l/NACommonUtils.svg?style=flat)](http://cocoapods.org/pods/NACommonUtils)
[![Platform](https://img.shields.io/cocoapods/p/NACommonUtils.svg?style=flat)](http://cocoapods.org/pods/NACommonUtils)

Swift utilities and extensions used across a number of iOS apps

| Utility | Comment|
|---------|--------|
|ActivityOverlay|Light-weight version of [MBProgessHUD](https://github.com/jdg/MBProgressHUD) - shows a translucent HUD, containing an activity indicator, centred in a specified view|
|AnyError|Provides type erasing unified error type|
|Array+Functional|`func headTail() -> (head: Element, tail: [Element])?`; `arrayByAppend` and `arrayByAppendContentsOf` non-mutating versions of the stdlib `append` and `appendContentsOf` |
|NSMutableAttributedString+Creation|`NSMutableAttributedString` creation helpers|
|OnePixelConstraint|Designed as a auto-layout width/height constraint that will always be 1px regardless of screen scale|
|String+LineUtils|Strings line helpers|
|UIButton+ActionBlock|Button onPressed: block extension|
|UIGestureRecognizer+ActionBlock|Gesture recognizer block extension|
|UIResponder+FindUIViewController|Walk the responder chain until we find a `UIViewController`; useful when a `UIView` needs to access `UIViewController` API|
|UIView+Autolayout|Autolayout helpers; `useAutolayout()`, `centerInView(..)`, `constrainToWidth(..)`, `constrainToHeight(..) `|
|KeepInMemoryMixin|Class mixin to allow the class to keep itself in memory|
|UIView+NibLoading|`instanceFromNib()` Load an instance of a view from a nib named identically to the class.|

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
