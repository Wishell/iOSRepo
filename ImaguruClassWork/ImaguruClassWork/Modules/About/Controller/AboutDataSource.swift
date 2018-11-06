//
//  AboutDataSource.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class AboutDataSource: NSObject {
    var items: [AboutData] = []
}

// MARK: - UICollectionViewDataSource
extension AboutDataSource: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "aboutCell", for: indexPath) as? AboutCell else {
            fatalError()
        }
        cell.display(item)
        return cell
    }

}
