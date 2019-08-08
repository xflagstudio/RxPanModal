#
# Be sure to run `pod lib lint RxPanModal.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxPanModal'
  s.version          = '0.1'
  s.summary          = 'A short description of RxPanModal.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xflagstudio/RxPanModal'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lm2343635' => 'lm2343635@126.com' }
  s.source           = { :git => 'https://github.com/xflagstudio/RxPanModal.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'


  s.subspec 'Core' do |core|
    core.source_files = 'RxPanModal/Classes/Core/**/*'
    core.dependency 'PanModal', '~> 1'
    core.dependency 'RxCocoa', '~> 5'
  end

  s.subspec 'Template' do |template|
    template.source_files = 'RxPanModal/Classes/Template/**/*'
    template.dependency 'RxPanModal/Core', '~> 0'
    template.dependency 'SnapKit', '~> 5'
  end

end
