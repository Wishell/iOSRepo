//  
//  AboutView.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol AboutViewInput: class {
    func prepareView()
    var registerCollectionView: ((UICollectionView)->Void)? {get set}
}

final class AboutView: UIView {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var registerCollectionView: ((UICollectionView)->Void)?
    //var aboutCell: AboutCell = AboutCell()
    
}

// MARK: - AboutViewInput
extension AboutView: AboutViewInput {
    func prepareView(){
        registerCollectionView?(collectionView)
    }
}
