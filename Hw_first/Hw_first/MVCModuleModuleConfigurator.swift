//  
//  MVCModuleModuleConfigurator.swift
//  Hw_first
//
//  Created by Wishell on 25.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class MVCModuleModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? MVCModuleViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: MVCModuleViewController) {
        let model = MVCModuleModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
