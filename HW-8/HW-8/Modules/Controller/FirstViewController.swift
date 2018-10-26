//  
//  FirstViewController.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    var model: FirstModelInput!
    lazy var contentView: FirstViewInput = { return view as! FirstViewInput }()
    
}

// MARK: - FirstModelOutput
extension FirstViewController: FirstModelOutput {}

// MARK: - FirstViewControllerInput
extension FirstViewController: FirstViewControllerInput {}
