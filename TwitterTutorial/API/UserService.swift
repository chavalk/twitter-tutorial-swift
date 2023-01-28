//
//  UserService.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 1/28/23.
//

import Foundation

struct UserService {
    static let shared = UserService()
    
    func fetchUser() {
        print("DEBUG: Fetch current user info...")
    }
}
