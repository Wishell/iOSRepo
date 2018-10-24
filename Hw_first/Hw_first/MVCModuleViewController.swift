//  
//  MVCModuleViewController.swift
//  Hw_first
//
//  Created by Wishell on 25.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class MVCModuleViewController: UIViewController {
    
    var model: MVCModuleModelInput!
    lazy var contentView: MVCModuleViewInput = { return view as! MVCModuleViewInput }()
    
}

// MARK: - MVCModuleModelOutput
extension MVCModuleViewController: MVCModuleModelOutput {}

// MARK: - MVCModuleViewControllerInput
extension MVCModuleViewController: MVCModuleViewControllerInput {}
