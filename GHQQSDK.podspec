#
# Be sure to run `pod lib lint GHQQSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GHQQSDK'
  s.version          = '3.5.5.121.x'
  s.summary          = 'GHQQSDK封装最新版本的QQSDK。'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage                = 'https://github.com/juguanhui/GHQQSDK'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'juguanhui' => 'juguanhui@126.com' }
  s.source                  = { :git => 'https://github.com/juguanhui/GHQQSDK.git', :tag => s.version.to_s }
  s.platform                = :ios
  s.ios.deployment_target   = '9.0'
  s.pod_target_xcconfig     = { 'skip_validation' => true , 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig    = { 'skip_validation' => true , 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.vendored_frameworks     = 'GHQQSDK/Classes/TencentOpenAPI.framework'
  s.source_files            = 'GHQQSDK/Classes/TencentOpenAPI.framework/Headers/TencentOpenApiUmbrellaHeader.h'
  s.requires_arc            = true
  s.frameworks              = 'UIKit', 'Foundation', 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries               = 'iconv', 'sqlite3', 'stdc++', 'z'
  s.xcconfig = {
    'VALID_ARCHS' => 'armv7 i386 x86_64 arm64',
  }

end
