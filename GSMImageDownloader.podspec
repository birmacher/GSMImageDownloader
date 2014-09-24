#
# Be sure to run `pod lib lint GSMImageDownloader.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GSMImageDownloader"
  s.version          = "0.1.0"
  s.summary          = "Downloads Google Maps images with Google Static Maps API"
  s.description      = <<-DESC
                       Downloads Google Maps images with Google Static Maps API
                       Google Maps Static API: https://developers.google.com/maps/documentation/staticmaps/index
                       DESC
  s.homepage         = "https://github.com/birmacher/GSMImageDownloader"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Barnabás Birmacher" => "birmacher@gmail.com" }
  s.source           = { :git => "https://github.com/birmacher/GSMImageDownloader.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

#s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'GSMImageDownloader' => ['Pod/Assets/*.png']
  }
end
