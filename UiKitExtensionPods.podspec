#
# Be sure to run `pod lib lint UiKitExtensionPods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UiKitExtensionPods'
  s.version          = '0.3.0'
  s.summary          = 'UiKitExtension for setting up the Constraints.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: UiKitExtensionPods is an awasome pod aimed to make your life easier around Constraints .
                       DESC

  s.homepage         = 'https://github.com/Rajeswarip1203/UiKitExtensionPods'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rajeswarip1203' => 'rajeswari.p@news.co.uk' }
  s.source           = { :git => 'https://github.com/Rajeswarip1203/UiKitExtensionPods.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.source_files = 'Source/**/*.swift'
  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'
  s.platforms = {
      "ios": "12.0"
  }
  
  # s.resource_bundles = {
  #   'UiKitExtensionPods' => ['UiKitExtensionPods/Assets/*.png']
  # }

  #s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
