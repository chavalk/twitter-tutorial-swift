//
//  EditProfileHeader.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/23/23.
//

import UIKit

class EditProfileHeader: UIView {
    
    // MARK: - Properties
    
    private let user: User
    
    // MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(frame: .zero)
        
        backgroundColor = .twitterBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
