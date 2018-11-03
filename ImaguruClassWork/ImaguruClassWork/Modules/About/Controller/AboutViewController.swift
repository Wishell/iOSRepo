//  
//  AboutViewController.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class AboutViewController: UIViewController {
    
    var model: AboutModelInput!
    lazy var contentView: AboutViewInput = { return view as! AboutViewInput }()
    override func viewDidLoad() {
        super .viewDidLoad()
        contentView.registerCollectionView = {[unowned self] (collectionView) in
            collectionView.dataSource = self.model.dataSource
            collectionView.register(AboutCell.self, forCellWithReuseIdentifier: "aboutCell")
        }
        model.load()
        contentView.prepareView()
        
    }
    
}

// MARK: - AboutModelOutput
extension AboutViewController: AboutModelOutput {}

// MARK: - AboutViewControllerInput
extension AboutViewController: AboutViewControllerInput {}
