//
//  ProfileController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/1/23.
//

import UIKit

class ProfileController: UICollectionViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    // MARK: Helpers
    
    func configureCollectionView() {
        collectionView.backgroundColor = .white
    }
}
