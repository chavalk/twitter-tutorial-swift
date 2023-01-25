//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 1/23/23.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let feed = FeedController()
        let nav1 = UINavigationController(rootViewController: feed)
        nav1.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "search_unselected")
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "search_unselected")
        
        viewControllers = [nav1, explore, notifications, conversations]
    }
}
