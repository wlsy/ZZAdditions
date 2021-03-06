#
# Be sure to run `pod lib lint ZZAdditions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ZZAdditions"
  s.version          = "0.2.0"
  s.summary          = "Useful Objective C Categories and Classes"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
    Useful Objective C Categories and Classes .
                       DESC

  s.homepage         = "https://github.com/wlsy/ZZAdditions"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "zz" => "zz@mou.io" }
  s.source           = { :git => "https://github.com/wlsy/ZZAdditions.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ZZAdditions' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit','QuartzCore', 'Accelerate'
  # s.dependency 'AFNetworking', '~> 2.3'
end
