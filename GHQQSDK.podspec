#
# Be sure to run `pod lib lint GHQQSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GHQQSDK'
  s.version          = '3.5.5.124'
  s.summary          = 'GHQQSDK封装最新版本的QQSDK。'
  s.requires_arc     = true
  s.homepage         = 'https://github.com/juguanhui/GHQQSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'juguanhui' => 'juguanhui@126.com' }
  s.platform         = :ios, "9.0"
  s.source           = { :git => 'https://github.com/juguanhui/GHQQSDK.git', :tag => s.version.to_s }
  s.vendored_frameworks = 'GHQQSDK/TencentOpenAPI.framework'
  s.source_files        = 'GHQQSDK/TencentOpenAPI.framework/Headers/*.h'
  s.frameworks              = 'UIKit', 'Foundation', 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries               = 'iconv', 'sqlite3', 'stdc++', 'z'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.ios.deployment_target = '9.0'
  valid_archs = ['armv7', 'i386', 'x86_64', 'arm64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }

  s.pod_target_xcconfig = { 'skip_validation' => true, 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'skip_validation' => true, 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
