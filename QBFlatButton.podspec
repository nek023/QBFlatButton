Pod::Spec.new do |s|
  s.name         = "QBFlatButton"
  s.version      = "1.1"
  s.summary      = "Flat-Style Button"
  s.homepage     = "https://github.com/questbeat/QBFlatButton"
  s.license      = 'MIT'
  s.author       = { "questbeat" => "questbeat@gmail.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/questbeat/QBFlatButton.git", :tag => "v1.1" }
  s.source_files = 'Pod/Classes/*.{h,m}'
  s.requires_arc = true
end

