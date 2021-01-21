//
//  AgoraARVideoFrame.swift
//  AgoraARKit
//
//  Created by Max Cobb on 21/01/2021.
//

import SceneKit
import AgoraRtcKit

class AgoraARVideoFrame: SCNNode {
    /// Is the video turned off for this user.
    var videoMuted: Bool = true {
        didSet {
            if oldValue != videoMuted {
                self.screen.isHidden = videoMuted
            }
        }
    }
    /// Is the microphone muted for this user.
    var audioMuted: Bool = true {
        didSet {
            self.mutedFlag.isHidden = !audioMuted
        }
    }
    /// Unique ID for this user, used by the video feed.
    var uid: UInt

    /// View that the AgoraRtcVideoCanvas is sending the video feed to
    var hostingView: SCNNode? {
        self.screen
    }

    var screen = SCNNode()

    var micFlagColor: UIColor = .systemBlue

    /// Icon to show if this user is muting their microphone
    lazy var mutedFlag: SCNNode = {
        let muteGeom = SCNSphere(radius: 0.1)
        let muteMaterial = SCNMaterial()
        muteMaterial.diffuse.contents = self.micFlagColor
        muteGeom.materials = [muteMaterial]
        return SCNNode(geometry: muteGeom)
    }()

    init(for userid: UInt, agoraKit: AgoraRtcEngineKit) {
        self.uid = userid
        super.init()
        let renderer = ARVideoRenderer()
        renderer.renderNode = self.screen
        self.screen.isHidden = true
        agoraKit.setRemoteVideoRenderer(renderer, forUserId: self.uid)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
