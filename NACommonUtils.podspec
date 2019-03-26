Pod::Spec.new do |s|
  s.name         = "NACommonUtils"
  s.version      = "2.6.1"
  s.summary      = "Some useful utilities."
  s.homepage     = "http://nickager.com/blog/2016/03/04/NACommonUtils"
  s.requires_arc = true
  s.description = <<-DESC
                     * ActivityOverlay - Light-weight version of MBProgessHUD. Shows a translucent HUD centred in a specified view containing an activity indicator.
                     * Array+Functional - `func headTail() -> (head: Element, tail: [Element])?`; `arrayByAppend` and `arrayByAppendContentsOf` non-mutating versions of the stdlib `append` and `appendContentsOf`
                     * NSMutableAttributedString+Creation - NSMutableAttributedString creation helpers
                     * OnePixelConstraint - Designed as a auto-layout width/height constraint that will always be 1px regardless of screen scale
                     * String+LineUtils - Strings line helpers
                     * UIButton+ActionBlock - Button onPressed: block extension
                     * UIGestureRecognizer+ActionBlock - Gesture recognizer block extension
                     * UIResponder+FindUIViewController - Walk the responder chain until we find a `UIViewController`; useful when a `UIView` needs to access `UIViewController` API
                     * UIView+Autolayout - Autolayout helpers; `useAutolayout()`, `centerInView(..)`, `constrainToWidth(..)`, `constrainToHeight(..)`
                     * KeepInMemoryMixin - Class mixin to allow the class to keep itself in memory
                     * UIView+NibLoading - instanceFromNib() Load an instance of a view from a nib named identically to the class.
                     * UIStoryboard+InstantiateViewController - type-safe Storyboard view controller instantiation
                     * UIView+border - layer based UIView border util
                     * UILabel+Measurement - text size measurement
                    DESC

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Nick Ager" => "nick.ager@gmail.com" }
  s.social_media_url   = "http://twitter.com/NickAger"

  s.platform     = :ios, "12.0"
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['4.2']
  s.source       = { :git => "https://github.com/NickAger/NACommonUtils.git", :tag => "#{s.version}" }
  s.source_files = "NACommonUtils/**/*.{swift}"

  s.framework  = "UIKit"
end
