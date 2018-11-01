//  
//  FeedModuleConfigurator.swift
//  ImaguruClassWork
//
//  Created by Wishell on 01.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FeedModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? FeedViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: FeedViewController) {
        let model = FeedModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
