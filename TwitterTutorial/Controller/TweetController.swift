//
//  TweetController.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 2/8/23.
//

import UIKit

class TweetController: UICollectionViewController {
    
    // MARK: - Properties
    
    private let tweet: Tweet
    
    // MARK: - Lifecycle
    
    init(tweet: Tweet) {
        self.tweet = tweet
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        
        print("DEBUG: Tweet caption is \(tweet.caption)")
    }
    
    func configureCollectionView() {
        collectionView.backgroundColor = .white
    }
}
