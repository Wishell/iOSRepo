//  
//  ImageTableView.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

protocol ImageTableViewInput: class {
    var onLoad:(()->Void)? {get set}
}

final class ImageTableView: UIView {
    
    @IBOutlet weak var table: UITableView!
    @IBAction func OnLoadTap(_ sender: Any) {
        onLoad?()
    }
    
     var onLoad:(()->Void)?
    
}

// MARK: - ImageTableViewInput
extension ImageTableView: ImageTableViewInput {}
