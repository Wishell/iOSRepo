//
//  AboutCell.swift
//  ImaguruClassWork
//
//  Created by Wishell on 04.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

class AboutCell : UICollectionViewCell{
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var cell: AboutData? {
        didSet {
            authorLabel.text = cell?.author
            contactLabel.text = cell?.contact
            versionLabel.text = String((cell?.version)!)
            image.image = UIImage(named: (cell?.image)!)
        }
    }
    
}
