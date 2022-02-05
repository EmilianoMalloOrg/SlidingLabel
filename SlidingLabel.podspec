#
# Be sure to run `pod lib lint SlidingLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SlidingLabel'
  s.version          = '3.0.0'
  s.summary          = 'Pod to simulate sliding label used in tiktok.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'The idea is to slide the inner text smoothly, it is just a view. I wrote it because I needed something like that in a project and I didnt found something similar on the Internet. I hope you can use it.'

  s.homepage         = 'https://github.com/emallo5/SlidingLabel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Emiliano Mallo' => 'emiliano.mallo@gmail.com' }
  s.source           = { :git => 'https://github.com/EmilianoMalloOrg/SlidingLabel.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.5'
  s.source_files = 'HorizontalSlidingLabel/HorizontalSlidingLabel/**/*.swift'
  
  # s.resource_bundles = {
  #   'SlidingLabel' => ['SlidingLabel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
