//
//  EditProfileViewModel.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/23/23.
//

import Foundation

enum EditProfileOptions: Int, CaseIterable {
    case fullName
    case username
    case bio
    
    var descritpion: String {
        switch self {
        case .username: return "Username"
        case .fullName: return "Name"
        case .bio: return "Bio"
        }
    }
}
