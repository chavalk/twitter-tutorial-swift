//
//  ProfileHeaderViewModel.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/6/23.
//

import Foundation

enum ProfileFilterOption: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}
