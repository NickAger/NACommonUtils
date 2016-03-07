Pod::Spec.new do |s|
  s.name         = "NACommonUtils"
  s.version      = "1.0.1"
  s.summary      = "Utilities common to all apps."
  s.homepage     = "http://nickager.com/blog/2016/03/04/NACommonUtils"
  s.requires_arc = true

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Nick Ager" => "nick.ager@gmail.com" }
  s.social_media_url   = "http://twitter.com/NickAger"

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/NickAger/NACommonUtils.git", :tag => "#{s.version}" }
  s.source_files = "NACommonUtils/**/*.{swift}"

  s.framework  = "UIKit"
end
