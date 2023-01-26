//
//  RegistrationController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 1/25/23.
//

import UIKit

class RegistrationController: UIViewController {
    
    // MARK: - Properties
    
    private let alreadyHaveAccountButton: UIButton = {
        let button = Utilities().attributedButton("Already have an account?", " Log In")
        button.addTarget(self, action: #selector(handleShowLogIn), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    // MARK: - Selectors
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
    }
}
