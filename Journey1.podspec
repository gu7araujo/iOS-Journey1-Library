Pod::Spec.new do |spec|
  spec.name         = "Journey1"
  spec.version      = "0.0.1"
  spec.summary      = "Journey library"
  spec.description  = <<-DESC
  A journey and their features.
                   DESC

  spec.homepage     = "https://github.com/gu7araujo/iOS-Journey1-Library"
  spec.license      = "MIT"
  spec.author             = "Gustavo Araujo Santos"
  
  spec.platform     = :ios
  spec.platform     = :ios, "17"
  spec.swift_version = '5.9'
  
  spec.source       = { :git => "git@github.com:gu7araujo/iOS-Journey1-Library.git", :tag => "#{spec.version}" }

  spec.source_files  = "Journey1/**/*"
  spec.dependency "Core"
end
