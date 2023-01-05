#
# Be sure to run `pod lib lint ZFDatePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZFDatePicker'
  s.version          = '1.0.2'
  s.summary          = '解决获取当前日期有时提前一个月问题'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chengzhengfeng'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '631781190@qq.com' => '631781190@qq.com' }
  s.source           = { :git => 'https://github.com/chengzhengfeng/ZFDatePicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ZFDatePicker/Classes/**/*'
  
   s.resource_bundles = {
  #   'ZFDatePicker' => ['ZFDatePicker/Assets/*.png']
      'ZFDatePicker' => ['ZFDatePicker/Assets/PGDatePicker.bundle']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'PGPickerView'
end
