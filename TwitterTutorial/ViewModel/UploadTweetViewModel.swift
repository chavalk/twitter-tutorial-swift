//
//  UploadTweetViewModel.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/10/23.
//

import UIKit

enum UploadTweetConfiguration {
    case tweet
    case reply(Tweet)
}

struct UploadTweetViewModel {
    
    let actionButtonTitle: String
    let placeholderText: String
    var shouldShorReplyLabel: Bool
    
    init(config: UploadTweetConfiguration) {
        switch config {
        case .tweet:
            <#code#>
        case .reply(_):
            <#code#>
        }
    }
}
