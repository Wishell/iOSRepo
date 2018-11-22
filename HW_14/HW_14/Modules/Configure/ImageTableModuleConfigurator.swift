//  
//  ImageTableModuleConfigurator.swift
//  HW_14
//
//  Created by Wishell on 20.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class ImageTableModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? ImageTableViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: ImageTableViewController) {
        let model = ImageTableModel()
        model.output = viewController
        model.repository = Repository(apiClient: APIClient(), database: Database())
        
        viewController.model = model
    }
    
}
