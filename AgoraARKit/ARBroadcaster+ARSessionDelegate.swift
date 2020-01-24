//
//  ARBroadcaster+ARSessionDelegate.swift
//  Agora-ARKit Framework
//
//  Created by Hermes Frangoudis on 1/15/20.
//  Copyright © 2020 Agora.io. All rights reserved.
//

import ARKit

extension ARBroadcaster: ARSessionDelegate {
    
    open func session(_ session: ARSession, didUpdate frame: ARFrame) {
        
    }
    
    open func session(_ session: ARSession, didOutputAudioSampleBuffer audioSampleBuffer: CMSampleBuffer) {
        guard self.agoraKit != nil else { return }
        self.agoraKit.pushExternalAudioFrameSampleBuffer(audioSampleBuffer)
    }
    
    open func session(_ session: ARSession, didFailWithError error: Error) {
        print("session failed with error: \(error)")
    }
    
    open func sessionWasInterrupted(_ session: ARSession) {
        print("sessionWasInterrupted")
    }
}
