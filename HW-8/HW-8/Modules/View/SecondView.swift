//  
//  SecondView.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol SecondViewInput: class {
    func setImage(image: UIImage)
}

final class SecondView: UIView {
    @IBOutlet weak var WhatsUp: UIImageView!
    
    
}

// MARK: - SecondViewInput
extension SecondView: SecondViewInput {
    func setImage(image: UIImage) {
        WhatsUp.image = image
    }
    
    
}
