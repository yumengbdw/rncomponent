
require 'json'

Pod::Spec.new do |s|
s.name                = "React"
s.version             = "0.43.4"
s.summary             = "0.43.4"
s.description         = <<-DESC
一些描述信息。
                       DESC
s.homepage            = "http://facebook.github.io/react-native/"
s.license             = "MIT"
s.author              = "Facebook"
s.source              = { :git => "https://github.com/facebook/react-native.git", :tag => "v#{s.version}" }
s.default_subspec     = 'Core'
s.requires_arc        = true
s.platform                = :ios, "8.0"
s.pod_target_xcconfig     = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++14" }
s.preserve_paths          = "package.json", "LICENSE", "LICENSE-CustomComponents", "PATENTS"
s.cocoapods_version       = ">= 1.2.0"

s.subspec "Core" do |ss|
ss.dependency             "Yoga"
ss.dependency             "React/cxxreact"
ss.source_files         = "React/**/*.{c,h,m,mm,S}"
ss.exclude_files        = "**/__tests__/*", "IntegrationTests/*", "React/DevSupport/*", "React/**/RCTTVView.*", "ReactCommon/yoga/*", "React/Cxx*/*"
ss.framework            = "JavaScriptCore"
ss.libraries            = "stdc++"
end

s.subspec "DevSupport" do |ss|
ss.dependency             "React/Core"
ss.dependency             "React/RCTWebSocket"
ss.source_files         = "React/DevSupport/*"
end

s.subspec "tvOS" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "React/**/RCTTVView.{h, m}"
end

s.subspec "jschelpers" do |ss|
ss.source_files         = "ReactCommon/jschelpers/{JavaScriptCore,JSCWrapper}.{cpp,h}", "ReactCommon/jschelpers/systemJSCWrapper.cpp"
ss.private_header_files = "ReactCommon/jschelpers/{JavaScriptCore,JSCWrapper}.h"
ss.pod_target_xcconfig  = { "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\"" }
ss.framework            = "JavaScriptCore"
end

s.subspec "cxxreact" do |ss|
ss.dependency             "React/jschelpers"
ss.source_files         = "ReactCommon/cxxreact/{JSBundleType,oss-compat-util}.{cpp,h}"
ss.private_header_files = "ReactCommon/cxxreact/{JSBundleType,oss-compat-util}.h"
ss.pod_target_xcconfig  = { "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\"" }
end

s.subspec "ART" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/ART/**/*.{h,m}"
end

s.subspec "RCTActionSheet" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/ActionSheetIOS/*.{h,m}"
end

s.subspec "RCTAdSupport" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/AdSupport/*.{h,m}"
end

s.subspec "RCTAnimation" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/NativeAnimation/{Drivers/*,Nodes/*,*}.{h,m}"
end

s.subspec "RCTCameraRoll" do |ss|
ss.dependency             "React/Core"
ss.dependency             "React/RCTImage"
ss.source_files         = "Libraries/CameraRoll/*.{h,m}"
end

s.subspec "RCTGeolocation" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/Geolocation/*.{h,m}"
end

s.subspec "RCTImage" do |ss|
ss.dependency             "React/Core"
ss.dependency             "React/RCTNetwork"
ss.source_files         = "Libraries/Image/*.{h,m}"
end

s.subspec "RCTNetwork" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/Network/*.{h,m,mm}"
end

s.subspec "RCTPushNotification" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/PushNotificationIOS/*.{h,m}"
end

s.subspec "RCTSettings" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/Settings/*.{h,m}"
end

s.subspec "RCTText" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/Text/*.{h,m}"
end

s.subspec "RCTVibration" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/Vibration/*.{h,m}"
end

s.subspec "RCTWebSocket" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/WebSocket/*.{h,m}"
end

s.subspec "RCTLinkingIOS" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/LinkingIOS/*.{h,m}"
end

s.subspec "RCTTest" do |ss|
ss.dependency             "React/Core"
ss.source_files         = "Libraries/RCTTest/**/*.{h,m}"
ss.frameworks           = "XCTest"
end
end
