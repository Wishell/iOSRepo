//  
//  AboutModuleConfigurator.swift
//  ImaguruClassWork
//
//  Created by Wishell on 03.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class AboutModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? AboutViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: AboutViewController) {
        let model = AboutModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
