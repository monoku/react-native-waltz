Pod::Spec.new do |s|
  s.name         = "react-native-waltz"
  s.version      = "1.0.0"
  s.summary      = "react-native-waltz"
  s.description  = "React Native Wrapper for Waltz"
  s.homepage     = ""
  s.license      = "MIT"
  s.author       = { "author" => "info@monoku.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/monoku/react-native-waltz.git", :tag => "master" }
  s.source_files = "ios/**/*.{*,.*}"
  s.requires_arc = true
  s.dependency "React"
end
