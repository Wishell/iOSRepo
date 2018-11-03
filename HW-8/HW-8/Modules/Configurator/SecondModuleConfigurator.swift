//  
//  SecondModuleConfigurator.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class SecondModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? SecondViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: SecondViewController) {
        let model = SecondModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
