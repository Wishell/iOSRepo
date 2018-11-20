//  
//  ImageTableView.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol ImageTableViewInput: class {}

final class ImageTableView: UIView {
    
    @IBOutlet weak var table: UITableView!
    @IBAction func OnLoadTap(_ sender: Any) {
        
    }
    
}

// MARK: - ImageTableViewInput
extension ImageTableView: ImageTableViewInput {}
