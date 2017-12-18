#
# Be sure to run `pod lib lint DefaultSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'XHWLCoreSDK'
s.version = '0.1.0'
s.license = 'MIT'
#s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.summary = 'An Animate Water view on iOS.'
s.homepage = 'https://github.com/JolieYa/XHWLCoreSDK'
s.authors = { '511979194@qq.com' => '511979194@qq.com' }
s.source = { :git => 'https://github.com/JolieYa/XHWLCoreSDK.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
#s.source_files = 'XHWLCoreSDK/Classes/**/*.{h,m}'
#s.resources = 'RemoteOpenDoor/**/*.{png,xib}'
s.source_files  = "RemoteOpenDoor", "RemoteOpenDoor/**/*.{h,m}"

end
