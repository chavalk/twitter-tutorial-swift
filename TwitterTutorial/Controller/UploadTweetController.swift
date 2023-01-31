//
//  UploadTweetController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 1/30/23.
//

import UIKit

class UploadTweetController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    @objc func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - API
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .white
//        navigationController?.navigationBar.isTranslucent = false
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
    }
}
