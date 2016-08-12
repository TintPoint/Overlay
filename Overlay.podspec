Pod::Spec.new do |s|
  s.name         = "Overlay"
  s.version      = "0.1"
  s.summary      = "A very flexible UI framework designed for Swift."
  s.homepage     = "https://github.com/TintPoint/Overlay"
  s.author       = { "Justin Jia" => "justin@tintpoint.com" }
  s.license      = "MIT"
  s.platform     = :ios, "9.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/TintPoint/Overlay.git", :tag => "#{s.version}" }
  s.source_files = "Sources/**/*.{h,swift}"
  s.framework    = "UIKit"
end

