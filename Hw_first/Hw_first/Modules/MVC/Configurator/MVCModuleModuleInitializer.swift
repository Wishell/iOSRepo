//  
//  MVCModuleModuleInitializer.swift
//  Hw_first
//
//  Created by Wishell on 25.10.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import UIKit

final class MVCModuleModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: MVCModuleViewController!
    
    override func awakeFromNib() {
        let configurator = MVCModuleModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
