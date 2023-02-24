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

struct EditProfileViewModel {
    
    private let user: User
    let option: EditProfileOptions
    
    var titleText: String {
        return option.descritpion
    }
    
    var optionValue: String? {
        switch option {
        case .username: return user.username
        case .fullName: return user.fullName
        case.bio: return user.bio
        }
    }
    
    var shouldHideTextField: Bool {
        return option == .bio
    }
    
    var shouldHideTextView: Bool {
        return option != .bio
    }
    
    init(user: User, option: EditProfileOptions) {
        self.user = user
        self.option = option
    }
}
