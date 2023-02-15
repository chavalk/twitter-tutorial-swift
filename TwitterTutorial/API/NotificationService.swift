//
//  NotificationService.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/14/23.
//

import Firebase

struct NotificationService {
    static let shared = NotificationService()
    
    func uploadNotification(type: NotificationType, tweet: Tweet? = nil) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        var values: [String: Any] = ["timestamp": Int(NSDate().timeIntervalSince1970), "uid": uid, "type": type.rawValue]
        
        if let tweet = tweet {
            values["tweetID"] = tweet.tweetID
        }
    }
}
