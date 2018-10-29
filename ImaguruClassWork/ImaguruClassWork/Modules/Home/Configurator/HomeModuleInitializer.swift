//  
//  HomeModuleInitializer.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class HomeModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: HomeViewController!
    
    override func awakeFromNib() {
        let configurator = HomeModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
