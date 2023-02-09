//
//  TweetController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/8/23.
//

import UIKit

class TweetController: UICollectionViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    func configureCollectionView() {
        collectionView.backgroundColor = .systemPurple
    }
}
