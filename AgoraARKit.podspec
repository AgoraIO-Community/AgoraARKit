#
#  Be sure to run `pod spec lint AgoraARKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "AgoraARKit"
  spec.version      = "1.0.0"
  spec.summary      = "AgoraARKit provides extendable implemention of the Agora.io Video SDK with ARKit."

  spec.description  = <<-DESC
                   AgoraARKit provides a bare bones implementation of the Agora.io Video SDK using ARKit as the video source. This framework uses a custom renderer (ARVideoKit) to generate a rendered video buffer of the ARSession, which is passed to the active Agora video stream.
                   DESC

  spec.homepage     = "http://github.com/AgoraIO-Community/AgoraARKit"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.author             = { "Hermes" => "hermes@agora.io" }
  spec.social_media_url   = "https://twitter.com/hermes_f"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.platform     = :ios, "12.2"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "http://github.com/AgoraIO-Community/AgoraARKit", :tag => "#{spec.version}" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source_files  = "AgoraARKit"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.dependency 'AgoraRtcEngine_iOS', '~> 3.2'
  spec.dependency 'ARVideoKit', '~> 1.6'
end
