//  
//  HomeModuleConfigurator.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class HomeModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? HomeViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: HomeViewController) {
        let model = HomeModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
