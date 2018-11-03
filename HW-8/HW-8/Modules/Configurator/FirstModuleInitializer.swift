//  
//  FirstModuleInitializer.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class FirstModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: FirstViewController!
    
    override func awakeFromNib() {
        let configurator = FirstModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
