
Pod::Spec.new do |s|

  s.name         = "LFLiveKit_quickhack"
  s.version      = "3.0"
  s.summary      = "LaiFeng ios Live. LFLiveKit. This library fix audioBitrate metadata"
  s.homepage     = "https://github.com/longseespace"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "chenliming" => "chenliming777@qq.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/longseespace/LFLiveKit.git", :tag => "#{s.version}" }
  s.source_files  = "LFLiveKit/**/*.{h,m,mm,cpp,c}"
  s.public_header_files = ['LFLiveKit/*.h', 'LFLiveKit/objects/*.h', 'LFLiveKit/configuration/*.h']

  s.frameworks = "VideoToolbox", "AudioToolbox","AVFoundation","Foundation","UIKit"
  s.libraries = "c++", "z"

  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Headers/Private/OpenSSL_Universal/** ${PODS_ROOT}/Headers/Public/OpenSSL_Universal/**' }

  s.dependency 'OpenSSL-Universal', '1.0.2.19'
  s.static_framework = true
  s.requires_arc = true
end
