#
# Be sure to run `pod lib lint YHEncryptor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEncryptor'
  s.version          = '1.0.5'
  s.summary          = '加密分类组件 提供MD5,AES,RSA,SM4'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
组件提供了常用的加密分类，如MD5,AES,RSA,SM4
                       DESC

  s.homepage         = 'https://github.com/YanHan1993/YHEncryptor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '闫寒' => '617584527@qq.com' }
  s.source           = { :git => 'https://github.com/YanHan1993/YHEncryptor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # 支持的ios最低版本
  s.ios.deployment_target = '9.0'
  
  s.preserve_paths = 'YHEncryptor.framework/*'
  
  # frameworkz中用到了Category，则需要配置此处
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  
  # framework不用于hm 不是文件，是一个文件夹，而且是一个特殊的文件夹。想要Framework正常使用，必须用到这句
  s.vendored_frameworks = 'YHEncryptor.framework'
  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS': '$(PODS_ROOT)/YHEncryptor'
  }
  s.requires_arc = true
  
  # 依赖关系，该项目所依赖的其他，当在加载的时候也会一块把相关的依赖的库加载下来，如果有多个需要填写多个
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
