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
AgoraARKit relies on the [Agora.io Video SDK](https://docs.agora.io/en/Agora%20Platform/downloads) and [ARVideoKit](https://github.com/AFathi/ARVideoKit).

## Support
- [Agora.io iOS API](https://docs.agora.io/en/Video/API%20Reference/oc/docs/headers/Agora-Objective-C-API-Overview.html)
- [Join the Agoira.io Developer Slack community](https://join.slack.com/t/agoraiodev/shared_invite/enQtNjk0OTg4ODgyNTc5LTczOWQ0YjBkMTMwZDFmYzViYjIxNjg4YTM0OWEzZjdkODM1NDNmOTM1ZTE4Y2Q1ZWUwMjNjMzMxMmZiNGI3ODg)


## Quick start guide
To get started with the AgoraARVideoKit, please follow the steps below to 

### Set up using CocoaPods (coming soon)
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

### Implementation
1. once you have imported the AgoraARKit and its dependancies, open your `ViewController.swift` and add:
```
import AgoraARKit
```

2. Next set your `ViewController` class to inherit from `AgoraLobbyVC` and set your Agora App Id with the `loadView` method. If you want to set a custom image for the Lobby view, set it using the `bannerImage` property.
```
override func loadView() {
    super.loadView()
    
    AgoraARKit.agoraAppId = ""

    
    // set the banner image within the initial view
    if let agoraLogo = UIImage(named: "ar-support-icon") {
        self.bannerImage = agoraLogo
    }
}
```

## Customization
The AgoraARKit classes are extendtable so you can subclass them to customize them as needed. 

### LobbyVC
Since we are already inheriting from the `AgoraLobbyVC`, let's `override` the `joinSession` and `createSession` methods within our `ViewController` to set the images for the audience and broadcaster views.

Custom images in Audience view
```
@IBAction override func joinSession() {
    if let channelName = self.userInput.text {
        if channelName != "" {
            let arAudienceVC = ARAudience()
            if let exitBtnImage = UIImage(named: "exit") {
                arAudienceVC.backBtnImage = exitBtnImage
            }
            arAudienceVC.channelName = channelName
            arAudienceVC.modalPresentationStyle = .fullScreen
            self.present(arAudienceVC, animated: true, completion: nil)
        } else {
            // TODO: add visible msg to user
            print("unable to join a broadcast without a channel name")
        }
    }
}
```

Custom images in Broadcaster view
```
@IBAction override func createSession() {
    if let channelName = self.userInput.text {
        if channelName != "" {
            let arBroadcastVC = ARBroadcaster()
            if let exitBtnImage = UIImage(named: "exit") {
                arBroadcastVC.backBtnImage = exitBtnImage
            }
            if let micBtnImage = UIImage(named: "mic"),
                let muteBtnImage = UIImage(named: "mute"),
                let watermakerImage = UIImage(named: "agora-logo") {
                arBroadcastVC.micBtnImage = micBtnImage
                arBroadcastVC.muteBtnImage = muteBtnImage
                arBroadcastVC.watermarkImage = watermakerImage
            }
            
            arBroadcastVC.channelName = channelName
            arBroadcastVC.modalPresentationStyle = .fullScreen
            self.present(arBroadcastVC, animated: true, completion: nil)
        } else {
            // TODO: add visible msg to user
            print("unable to launch a broadcast without a channel name")
        }
    }
}
```
...