//  
//  SecondModuleInitializer.swift
//  HW-8
//
//  Created by Wishell on 26.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class SecondModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: SecondViewController!
    
    override func awakeFromNib() {
        let configurator = SecondModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
