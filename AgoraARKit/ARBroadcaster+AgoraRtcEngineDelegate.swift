//
//  ARBroadcaster+AgoraRtcEngineDelegate.swift
//  Agora-ARKit Framework
//
//  Created by Hermes Frangoudis on 1/14/20.
//  Copyright © 2020 Agora.io. All rights reserved.
//

import AgoraRtcEngineKit

extension ARBroadcaster: AgoraRtcEngineDelegate {
    // MARK: Agora Delegate
    open func rtcEngine(_ engine: AgoraRtcEngineKit, firstRemoteVideoDecodedOfUid uid:UInt, size:CGSize, elapsed:Int) {
            // first remote video frame
           if self.showLogs {
               print("firstRemoteVideoDecoded for stream with uid: \(uid)")
           }
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didOccurError errorCode: AgoraErrorCode) {
           if self.showLogs {
               print("error: \(errorCode.rawValue)")
           }
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didOccurWarning warningCode: AgoraWarningCode) {
           if self.showLogs {
               print("warning: \(warningCode.rawValue)")
           }
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didJoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
           if self.showLogs {
               print("local user did join channel with uid:\(uid)")
           }
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didJoinedOfUid uid: UInt, elapsed: Int) {
           if self.showLogs {
               print("remote user joined with uid: \(uid)")
           }
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didOfflineOfUid uid: UInt, reason: AgoraUserOfflineReason) {
           if self.showLogs {
               print("remote user with uid: \"\(uid)\" went offline")
           }
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didAudioMuted muted: Bool, byUid uid: UInt) {
           // add logic to show icon that remote stream is muted
       }
       
    open func rtcEngine(_ engine: AgoraRtcEngineKit, receiveStreamMessageFromUid uid: UInt, streamId: Int, data: Data) {
           // successfully received message from user
           if self.showLogs {
               print("message for streamID: \"\(streamId)\" sent successfully\n - DATA: \(data)")
           }
       }
       
           
    open func rtcEngine(_ engine: AgoraRtcEngineKit, didOccurStreamMessageErrorFromUid uid: UInt, streamId: Int, error: Int, missed: Int, cached: Int) {
           // message failed to send(
           if self.showLogs {
               print("message error for streamID: \"\(streamId)\"\n - ERROR: \(error)")
           }
       }
}
