# coding: utf-8
Pod::Spec.new do |s|
  s.name             = 'KeychainAccess'
  s.version          = '3.1.0'
  s.summary          = 'KeychainAccess is a simple Swift wrapper for Keychain that works on iOS and OS X.'
  s.description      = <<-DESC
                         KeychainAccess is a simple Swift wrapper for Keychain that works on iOS and OS X.
                         Makes using Keychain APIs exremely easy and much more palatable to use in Swift.

                         Features
                           - Simple interface
                           - Support access group
                           - Support accessibility
                           - Support iCloud sharing
                           - **Support TouchID and Keychain integration (iOS 8+)**
                           - **Support Shared Web Credentials (iOS 8+)**
                           - Works on both iOS & OS X
                           - watchOS and tvOS are also supported
                       DESC
  s.homepage         = 'https://github.com/kishikawakatsumi/KeychainAccess'
  s.screenshots      = 'https://raw.githubusercontent.com/kishikawakatsumi/KeychainAccess/master/Screenshots/01.png'
  s.license          = 'MIT'
  s.author           = { 'kishikawa katsumi' => 'kishikawakatsumi@mac.com' }
  s.source           = { :git => 'https://github.com/kishikawakatsumi/KeychainAccess.git', :tag => "v#{s.version}" }
  s.social_media_url = 'https://twitter.com/k_katsumi'

  s.requires_arc = true
  s.source_files = 'Lib/KeychainAccess/*.swift'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

# MARK: - iOS Static Framework

  s.module_name = s.name
  s.name = "#{s.name}-SCF"

  s.platform = :ios
  s.ios.deployment_target = '8.0'

  s.default_subspec = 'StaticCocoaFramework'
  s.source = {
    http: 'https://dl.bintray.com/roxiemobile/generic/KeychainAccess-3.1.0-SCF.zip',
    sha256: '8958dc82df9eae4c74f694528d60f273fce3ec14f853806d92961f9e633d704c'
  }

  s.source_files = nil
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.subspec 'StaticCocoaFramework' do |sc|
    sc.preserve_paths = 'KeychainAccess.framework/*'
    sc.source_files = 'KeychainAccess.framework/Headers/*.h'
    sc.public_header_files = 'KeychainAccess.framework/Headers/*.h'
    sc.vendored_frameworks = 'KeychainAccess.framework'
  end
end
