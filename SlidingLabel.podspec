#
# Be sure to run `pod lib lint SlidingLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SlidingLabel'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SlidingLabel.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Emiliano Mallo/SlidingLabel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Emiliano Mallo' => 'emiliano.mallo@gmail.com' }
  s.source           = { :git => 'https://github.com/Emiliano Mallo/SlidingLabel.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'

  s.source_files = 'HorizontalSlidingLabel/HorizontalSlidingLabel/**/*.swift'
  
  # s.resource_bundles = {
  #   'SlidingLabel' => ['SlidingLabel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end