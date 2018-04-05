#
# Be sure to run `pod lib lint MXPagerView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MXPagerView"
  s.version          = "0.2.1"
  s.summary          = "Pager view with reusable page and storyboard support."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        MXPagerView is a pager view with the ability to reuse pages like you would do with a table view and cells. 
                        The MXPagerView also loads pages lazily, depending on the transition style, it will load the current page and neighbors and unload others pages.

                        MXPagerViewController allows you to load pages from storyboard using the MXPageSegue.
                       DESC

  s.homepage         = "https://github.com/maxep/MXPagerView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Maxime Epain" => "maxime.epain@gmail.com" }
  s.source           = { :git => "https://github.com/maxep/MXPagerView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MaximeEpain'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'MXPagerView/*.{m,h}'

# MARK: - iOS Static Framework

  s.module_name = s.name
  s.name = "#{s.name}-SCF"

  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.default_subspec = 'StaticCocoaFramework'
  s.source = {
    http: 'https://dl.bintray.com/roxiemobile/generic/MXPagerView-0.2.1-SCF.zip',
    sha256: '6aa8e4799bf22ca7b340464f96565f328cf20c5dea5a8c0884ffe904e7f2ebef'
  }

  s.source_files = nil

  s.subspec 'StaticCocoaFramework' do |sc|
    sc.preserve_paths = 'MXPagerView.framework/*'
    sc.source_files = 'MXPagerView.framework/Headers/*.h'
    sc.public_header_files = 'MXPagerView.framework/Headers/*.h'
    sc.vendored_frameworks = 'MXPagerView.framework'
  end
end
