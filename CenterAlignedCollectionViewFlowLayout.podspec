Pod::Spec.new do |s|

  s.name         = "CenterAlignedCollectionViewFlowLayout"
  s.version      = "0.5.0"
  s.summary      = "A UICollectionViewFlowLayout subclass that will center its cells."

  s.homepage     = "https://github.com/pitiphong-p/CenterAlignedCollectionViewFlowLayout"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Pitiphong Phongpattranont" => "pitiphong.p@me.com" }
  s.social_media_url   = "http://twitter.com/pitiphong_p"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/pitiphong-p/CenterAlignedCollectionViewFlowLayout.git", :tag => s.version }
  s.source_files  = "CenterAlignedCollectionViewFlowLayout.swift"

end
