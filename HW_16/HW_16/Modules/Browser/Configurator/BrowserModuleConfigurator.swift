//  
//  BrowserModuleConfigurator.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class BrowserModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? BrowserViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: BrowserViewController) {
        let model = BrowserModel()
        model.output = viewController
        let dataholder = DataHolder(database: DataBase())
        model.repository = Repository(apiClient: APIClient(), dataholder: dataholder)
        viewController.model = model
    }
    
}
