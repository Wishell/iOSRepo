//  
//  ImageTableViewController.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ImageTableViewController: UIViewController {
    
    var model: ImageTableModelInput!
    lazy var contentView: ImageTableViewInput = { return view as! ImageTableViewInput }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.onLoad = {
            self.model.load()
        }
    }
}

// MARK: - ImageTableModelOutput
extension ImageTableViewController: ImageTableModelOutput {}

// MARK: - ImageTableViewControllerInput
extension ImageTableViewController: ImageTableViewControllerInput {}
