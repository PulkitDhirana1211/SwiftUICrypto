//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 01/12/23.
//

import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
