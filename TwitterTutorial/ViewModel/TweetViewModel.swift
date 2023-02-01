//
//  TweetViewModel.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/1/23.
//

import Foundation

struct TweetViewModel {
    
    let tweet: Tweet
    
    var profileImageUrl: URL? {
        return tweet.user.profileImageUrl
    }
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
}
