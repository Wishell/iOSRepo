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
    
    lazy var contentView: MVCModuleViewInput = {return view as! MVCModuleViewInput}()
    override func awakeFromNib() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        modelDidLoad()
    }
}

// MARK: - MVCModuleModelOutput
extension MVCModuleViewController: MVCModuleModelOutput {
    func modelDidLoad() {
        model.load()
    }
}

// MARK: - MVCModuleViewControllerInput
extension MVCModuleViewController: MVCModuleViewControllerInput {}
