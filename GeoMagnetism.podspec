#
# Be sure to run `pod lib lint GeoMagnetism.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GeoMagnetism'
  s.version          = '0.1.0'
  s.summary          = 'Estimates the magnetic field on given points on the Earth.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Estimates the magnetic field on given points on the Earth.
This can be used to calculate magnectic declination from true north for compass navigation.
                       DESC

  s.homepage         = 'https://github.com/dasMulli/GeoMagnetism'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'dasMulli' => 'martin.andreas.ullrich@gmail.com' }
  s.source           = { :git => 'https://github.com/cssteam/GeoMagnetism.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GeoMagnetism/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GeoMagnetism' => ['GeoMagnetism/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
