//
//  ActionSheetLauncher.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/11/23.
//

import UIKit

class ActionSheetLauncher: NSObject {
    
    // MARK: - Properties
    
    private let user: User
    private let tableView = UITableView()
    
    // MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init()
    }
    
    // MARK: - Helpers
    
    func show() {
        print("DEBUG: Show action sheet for user \(user.username)")
    }
}
