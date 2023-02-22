//
//  EditProfileController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/22/23.
//

import UIKit

class EditProfileController: UITableViewController {
    
    // MARK: - Properties
    
    private let user: User
    
    // MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Selectors
    
    // MARK: - API
    
    // MARK: - Helpers
}