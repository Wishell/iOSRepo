//
//  AboutDataSource.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

class AboutDataSource: NSObject {
    var item: AboutData = AboutData()
}


extension AboutDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "aboutCell", for: indexPath) as? AboutCell {
            cell.cell = item
            return cell
        }
        return UICollectionViewCell()
    }
}
