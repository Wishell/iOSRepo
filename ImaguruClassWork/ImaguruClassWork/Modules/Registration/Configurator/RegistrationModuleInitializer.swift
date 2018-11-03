//  
//  RegistrationModuleInitializer.swift
//  ImaguruClassWork
//
//  Created by Wishell on 29.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class RegistrationModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: RegistrationViewController!
    
    override func awakeFromNib() {
        let configurator = RegistrationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
