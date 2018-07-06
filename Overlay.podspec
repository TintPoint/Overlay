Pod::Spec.new do |s|
  s.name         = "Overlay"
  s.version      = "0.8"
  s.summary      = "A very flexible UI framework designed for Swift."
  s.homepage     = "https://github.com/TintPoint/Overlay"
  s.author       = { "Justin Jia" => "justin.jia@tintpoint.com" }
  s.license      = "MIT"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/TintPoint/Overlay.git", :tag => "#{s.version}" }
  s.source_files = "Sources/**/*.swift"
  s.framework    = "UIKit"
end
