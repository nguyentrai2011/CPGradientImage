#
# Be sure to run `pod lib lint CPGradientImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CPGradientImage'
  s.version          = '0.1.0'
  s.summary          = 'Add gradient subLayer to your ImageView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.

Support 8 direction:

- Top
- Bottom
- Left
- Right
- Top left to bottom right
- Top right to bottom left
- Bottom left to top right
- Bottom right to top left

DESC

  s.homepage         = 'https://github.com/katafo/CPGradientImage'
  s.screenshots     = [](http://imgur.com/a/9nJm4)
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Phong Cao' => 'phong.caothanh@apps-cyclone.com' }
  s.source           = { :git => 'https://github.com/katafo/CPGradientImage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CPGradientImage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CPGradientImage' => ['CPGradientImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
