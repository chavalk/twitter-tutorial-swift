//
//  NotificationService.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/14/23.
//

import Foundation

struct NotificationService {
    static let shared = NotificationService()
    
    func uploadNotification(type: NotificationType) {
        print("DEBUG: Type is \(type)")
    }
}
