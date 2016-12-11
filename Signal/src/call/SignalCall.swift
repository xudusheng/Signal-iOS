//  Created by Michael Kirk on 12/7/16.
//  Copyright © 2016 Open Whisper Systems. All rights reserved.

import Foundation

@objc(OWSSignalCall)
class SignalCall: NSObject {

    var state: CallState
    let signalingId: UInt64
    let remotePhoneNumber: String
    let localId: UUID
    let hasVideo = false

    init(signalingId: UInt64, state: CallState, remotePhoneNumber: String) {
        self.signalingId = signalingId
        self.state = state
        self.remotePhoneNumber = remotePhoneNumber
        self.localId = UUID()
    }

    // MARK: Equatable 
    
    static func ==(lhs: SignalCall, rhs: SignalCall) -> Bool {
        return lhs.localId == rhs.localId
    }

}