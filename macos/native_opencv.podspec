#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint native_opencv.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'native_opencv'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'

#   告诉 CocoaPods 不要删除框架
   s.preserve_paths = 'opencv2.xcframework'
#   告诉链接器包含 opencv2 框架
   s.xcconfig = { 'OTHER_LDFLAGS' => '-framework opencv2' }
#   包括 OpenCV 框架
   s.vendored_frameworks = 'opencv2.xcframework'

#    # 告诉 CocoaPods 不要删除框架
#    s.preserve_paths = 'opencv2.framework'
#    # 告诉链接器包含 opencv2 框架
#    s.xcconfig = { 'OTHER_LDFLAGS' => '-framework opencv2' }
#    # 包括 OpenCV 框架
#    s.vendored_frameworks = 'opencv2.framework'

  # 包括原生框架
  s.frameworks = 'AVFoundation', 'Accelerate', 'OpenCL'
  # 包括 C++ 库
  s.library = 'c++'
end
