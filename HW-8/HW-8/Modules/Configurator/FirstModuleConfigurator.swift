//  
//  FirstModuleConfigurator.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FirstModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? FirstViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: FirstViewController) {
        let model = FirstModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
