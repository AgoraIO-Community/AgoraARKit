//
//  Logger.swift
//  AgoraARKit
//
//  Created by Hermes Frangoudis on 1/23/20.
//  Copyright © 2020 Agora.io. All rights reserved.
//

public enum LogLevel: Int {
    case None = 0
    case Normal = 1
    case Verbose = 2
}

public var logLevel: LogLevel = .Normal

public func lprint(_ log: String, _ level: LogLevel = .Normal) {
    #if DEBUG
    // If the debug level of our dprint is >= to the selected level
    if (logLevel.rawValue >= level.rawValue) {
        print("[AgoraARKit]: ", log)
    }
    #endif
}
