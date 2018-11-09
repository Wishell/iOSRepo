//  
//  FlightsAboutModuleConfigurator.swift
//  JsonCoddableUrlSession
//
//  Created by Wishell on 09.11.2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class FlightsAboutModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? FlightsAboutViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: FlightsAboutViewController) {
        let model = FlightsAboutModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
