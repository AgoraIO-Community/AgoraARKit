# AgoraARKit
Enabling apps to live stream AR video streams. **[ARKit](https://developer.apple.com/augmented-reality/)**, uses the device's camera and motion sensors to project virtual conetent into a user's world. **Agora.io**, provides a [video SDK](https://docs.agora.io/en/Video/product_video?platform=All%20Platforms) for building real-time video and audio communications applications. By combining Agora.io's Video SDK and ARKit, it enables developers to create many different applications across many different use-cases. 

This library provides three classes with managed user itnterfaces:
- Lobby: the pre-channel UIView, provides a text input for users to define their channel name and their role (broadcaster and audience)
- ARBroadcaster: User broadcasting their AR view in the live stream
- ARAudience: User viewing the remote user's AR session.

## Device Requirements
AgoraARKit requires a minimum version of iOS 12.2, and supports the following devices:
- iPhone 6S or newer
- iPhone SE
- iPad (2017)
- All iPad Pro models

iOS 12.2 can be downloaded from Apple’s Developer website.

## Dependancies
AgoraARKit relies on the Agora.io Video SDK and ARVideoKit.

## Support
- [Agora.io iOS API](https://docs.agora.io/en/Video/API%20Reference/oc/docs/headers/Agora-Objective-C-API-Overview.html)
- [Join the Agoira.io Developer Slack community](https://join.slack.com/t/agoraiodev/shared_invite/enQtNjk0OTg4ODgyNTc5LTczOWQ0YjBkMTMwZDFmYzViYjIxNjg4YTM0OWEzZjdkODM1NDNmOTM1ZTE4Y2Q1ZWUwMjNjMzMxMmZiNGI3ODg)

### Set up using CocoaPods
> NOTE: CocoaPods is not currently set up _(use Manual Setup below)_
1. Add to your podfile:

`pod 'AgoraARKit'`


2. In Terminal, navigate to your project folder, then:

`pod update`

`pod install`

3. Add `NSCameraUsageDescription` and `NSMicrophoneUsageDescription` to plist with a brief explanation (see demo project for an example)

### Set up manually
1. Add all files from the `AgoraARKit` directory to your project.
2. Import [`ARVideoKit`](https://github.com/AFathi/ARVideoKit) and [`Agora.io Video SDK`](https://docs.agora.io/en/Agora%20Platform/downloads) SDKS
3. Add `NSCameraUsageDescription` and `NSMicrophoneUsageDescription` to plist with a brief explanation (see demo project for an example)

### Quick start guide

...