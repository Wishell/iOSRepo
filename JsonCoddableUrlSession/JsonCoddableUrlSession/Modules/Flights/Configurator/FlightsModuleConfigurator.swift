//  
//  FlightsModuleConfigurator.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? FlightsViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: FlightsViewController) {
        let model = FlightsModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
