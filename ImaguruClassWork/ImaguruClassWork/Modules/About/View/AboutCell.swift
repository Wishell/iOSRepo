//
//  AboutCell.swift
//  ImaguruClassWork
//
//  Created by Wishell on 04.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class AboutCell: UICollectionViewCell {

    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var contact: UILabel!
    @IBOutlet weak var version: UILabel!
    @IBOutlet weak var image: UIImageView!

    override func prepareForReuse() {
        super.prepareForReuse()

        version.text = nil
        image.image = nil
    }

}

extension AboutCell {

    func display(_ data: AboutData) {
        author.text = data.author
        contact.text = data.contact
        data.version.flatMap { version.text = String($0) }
        data.image.flatMap { image.image = UIImage(named: $0) }
    }

}
